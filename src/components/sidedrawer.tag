<sidedrawer>
    <div class={mui--no-user-select:true, active:isDrawerActive}>
        <div id="sidedrawer-brand" class="mui--appbar-line-height mui--text-title">Brand.io</div>
        <div class="mui-divider"></div>
        <ul>
            <li>
                <strong>Category 1</strong>
                <ul>
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
            <li>
                <strong>Category 2</strong>
                <ul>
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
            <li>
                <strong>Category 3</strong>
                <ul>
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <style scoped>
        div.mui--no-user-select {
            position: fixed;
            top: 0;
            bottom: 0;
            width: 200px;
            left: -200px;
            overflow: auto;
            z-index: 2;
            background-color: #fff;
            transition: transform 0.2s;
        }

        #sidedrawer-brand {
            padding-left: 20px;
        }

        ul {
            list-style: none;
        }

        :scope > ul {
            padding-left: 0;
        }

        :scope > ul > li:first-child {
            padding-top: 15px;
        }

        strong {
            display: block;
            padding: 15px 22px;
            cursor: pointer;
        }

        strong:hover {
            background-color: #E0E0E0;
        }

        strong + ul > li {
            padding: 6px 0px;
        }

        .active {
            transform: translate(200px);
        }
    </style>

    <script>

        this.isDrawerActive = false;

        this.onStoreUpdated = (state) => {
            this.isDrawerActive = state.drawerIsOpen;
            this.update();
        };

        this.on('before-mount', () => {
            this.subscription = NanoFlux.getFusionStore().subscribe(this, this.onStoreUpdated);
        });

        this.on('unmount', () => {
            this.subscription.unsubscribe();
        });
    </script>

</sidedrawer>