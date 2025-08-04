from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class CatppuccinMocha(ColorScheme):
    progress_bar_color = blue

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        if context.in_browser:
            fg = 250
            if context.selected:
                attr |= reverse
            if context.directory:
                fg = 111
            if context.executable and not context.directory:
                fg = 108
            if context.link:
                fg = 141
            if context.media:
                fg = 175
            if context.tag_marker:
                fg = 174
            if context.marked:
                attr |= bold
                fg = 220
            if context.badinfo:
                fg = 203

        if context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = 109
            elif context.directory:
                fg = 111
            elif context.tab:
                fg = 175 if context.good else 167

        if context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 108
                elif context.bad:
                    fg = 203

        if context.text:
            if context.highlight:
                attr |= reverse

        return fg, bg, attr

