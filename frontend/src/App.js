import './App.css';
import { PlayersPage } from './pages/players';
import { TeamsPage } from './pages/teams';
import { FifaNavbar } from './components/shared/fifa-navbar';
import {
    BrowserRouter as Router,
    Switch,
    Route,
} from 'react-router-dom'; 

function App() {
    return (
        <Router>
            <div className="App">
                <FifaNavbar />
                <Switch>
                    <Route path="/players">
                        <PlayersPage
                            pageTitle="Players - FIFA 21 Ultimate Team"
                            elementsPerRow={4}
                        />
                    </Route>
                    <Route path="/teams">
                        <TeamsPage
                            pageTitle="Teams - FIFA 21 Ultimate Team"
                            elementsPerRow={4}
                        />
                    </Route>
                    <Route path="/">
                        Welcome to Fifa 21 project. Please use the navbar on top to navigate between pages.
                    </Route>
                </Switch>
            </div>
        </Router>
    );
}

export default App;
