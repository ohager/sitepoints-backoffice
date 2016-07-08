<menuitem>
    <li onClick="{toggleSubmenu}">
        <strong>{opts.title}
            <i class="{icon-angle-up:true,open:isSubmenuOpen}"></i>
        </strong>
        <ul class="{submenu:true,open:isSubmenuOpen}">
            <li each="{opts.items}">
                <a href="{href}">{text}</a>
            </li>
        </ul>
    </li>

    <style>
        ul.submenu {
            max-height: 0;
            opacity: 0;
            overflow: hidden;

            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
            transition: all .3s ease-in-out;
        }

        strong > i {
            position: absolute;
            right: 1em;
            transition: transform .5s ease-in-out
        }

        ul.submenu.open {
            opacity : 1;
            max-height: 200px;
        }

        strong > i.open {
            transform: rotate(0.5turn);
        }


    </style>

    <script>
        this.isSubmenuOpen = false;

        this.toggleSubmenu = (e) => {
            this.isSubmenuOpen = !this.isSubmenuOpen;
        }

    </script>
</menuitem>