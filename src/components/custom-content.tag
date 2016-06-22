<custom-content>
    <div id="content-container" class={light-primary-color:true,active:isDrawerOpen}>
        <div class="mui--appbar-height"></div>
        <div class="mui-container-fluid">
            <yield></yield>
        </div>
    </div>

    <style scoped>
        #content-container{
            min-height: 100%;
            overflow-x: hidden;
            margin-left: 0px;
            transition: margin-left 0.2s;

            /* sticky bottom */
            margin-bottom: -160px;
            padding-bottom: 160px;
        }

        :scope > #content-container.active {
            margin-left: 200px;
        }
    </style>

    <script>

        this.isDrawerOpen = false;

        this.onStoreUpdated = (state) => {
            this.isDrawerOpen = state.drawerIsOpen;
            this.update();
        }

        this.on('before-mount', () => {
            this.subscription = NanoFlux.getFusionStore().subscribe(this, this.onStoreUpdated);
        })

        this.on('unmount', () => {
            this.subscription.unsubscribe();
        })
    </script>

</custom-content>
