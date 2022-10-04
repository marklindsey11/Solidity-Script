/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
#include <libsolidity/lsp/SemanticHighlighter.h>
#include <libsolidity/lsp/Utils.h>

using namespace std;
using namespace solidity;
using namespace solidity::lsp;
using namespace solidity::frontend;

void SemanticHighlighter::operator()(MessageID _id, Json::Value const& _args)
{
	auto const [sourceUnitName, lineColumn] = extractSourceUnitNameAndLineColumn(_args);
	auto const [sourceNode, sourceOffset] = m_server.astNodeAndOffsetAtSourceLocation(sourceUnitName, lineColumn);

	Json::Value jsonReply = Json::arrayValue;
	for (auto const& [location, kind]: findAllReferences(sourceNode, sourceOffset, sourceUnitName))
	{
		Json::Value item = Json::objectValue;
		item["range"] = toRange(location);
		item["kind"] = static_cast<int>(kind);
		jsonReply.append(item);
	}
	client().reply(_id, jsonReply);
}

vector<Reference> SemanticHighlighter::findAllReferences(ASTNode const* _sourceNode, int _sourceOffset, string const& _sourceUnitName)
{
	if (!_sourceNode)
		return {};

	SourceUnit const& sourceUnit = m_server.ast(_sourceUnitName);

	return ReferenceCollector::collect(_sourceNode, _sourceOffset, sourceUnit);
}
