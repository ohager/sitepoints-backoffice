<menuitem>
    <li onClick="{toggleSubmenu}">
        <strong>{opts.title}</strong>
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

        ul.submenu.open {
            opacity : 1;
            max-height: 200px;
        }

    </style>

    <script>
        this.isSubmenuOpen = false;

        this.toggleSubmenu = (e) => {
            this.isSubmenuOpen = !this.isSubmenuOpen;
        }

    </script>
</menuitem>