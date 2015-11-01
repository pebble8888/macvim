/* vi:set ts=8 sts=4 sw=4 ft=objc:
 *
 * VIM - Vi IMproved		by Bram Moolenaar
 *				MacVim GUI port by Bjorn Winckler
 *
 * Do ":help uganda"  in Vim to read copying and usage conditions.
 * Do ":help credits" in Vim to see a list of people who contributed.
 * See README.txt for an overview of the Vim source code.
 */
/*
 * MMAtsuiTextView
 *
 * Dispatches keyboard and mouse input to the backend.  Handles drag-n-drop of
 * files onto window.  The rendering is done using ATSUI.
 *
 * The text view area consists of two parts:
 *   1. The text area - this is where text is rendered; the size is governed by
 *      the current number of rows and columns.
 *   2. The inset area - this is a border around the text area; the size is
 *      governed by the user defaults MMTextInset[Left|Right|Top|Bottom].
 *
 * The current size of the text view frame does not always match the desired
 * area, i.e. the area determined by the number of rows, columns plus text
 * inset.  This distinction is particularly important when the view is being
 * resized.
 */


