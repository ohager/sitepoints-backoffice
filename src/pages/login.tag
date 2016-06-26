import AppActions from '../actions/app-actions.js'

<login>
    <div class="mui-container">
        <div class="mui-panel">
            <form>
                <legend>Login</legend>
                <div class="mui-textfield mui-textfield--float-label">
                    <input type="text">
                    <label>Username</label>
                </div>
                <div class="mui-textfield mui-textfield--float-label">
                    <input type="password">
                    <label>Password</label>
                </div>
                <button type="button" onClick="{login}" class="mui-btn mui-btn--raised">Login</button>
            </form>
        </div>
    </div>

    <style>
        .mui-container {
            margin-top: 10%;
        }
        .mui-panel{
            max-width: 400px;
        }
    </style>

    <script>

        this.login = () => {
            AppActions.login();
        }

    </script>
</login>
