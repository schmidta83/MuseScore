/*
 * SPDX-License-Identifier: GPL-3.0-only
 * MuseScore-CLA-applies
 *
 * MuseScore
 * Music Composition & Notation
 *
 * Copyright (C) 2021 MuseScore BVBA and others
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.15

import MuseScore.Ui 1.0

TextInputField {
    id: root

    property string searchText: currentText

    onCurrentTextEdited: function(newTextValue) {
        searchText = newTextValue.trim()
    }

    width: 220
    opacity: 0.8

    hint: qsTrc("uicomponents", "Search")
    hintIcon: IconCode.SEARCH

    accessible.name: hint

    clearTextButtonVisible: Boolean(searchText) ?? false
}
