import ReactDOM from 'react-dom';
import React, { useState }  from 'react';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import {Header, Footer, Information, Navigation} from "./frames";
import {AllRouters} from "./routers";

export async function sendData(url, data) {
  const response = await fetch(url, {
    credentials: 'include',
    method: 'POST',
    sameSite: 'none',
    body: new FormData(data)
  });

  return response.json();
}

export function MessageCont(props) {

  return (
    <div id="cont">{props.message}</div>
  );
}

function LoginForm(props) {

  let [username, setUsername] = useState("");
  let [password, setPassword] = useState("");
  let [formMessage, setFormMessage] = useState("");

  function handleChange(event) {
    event.target.name === "username" ? setUsername(event.target.value) : setPassword(event.target.value);
  }

  function handleSubmit(event) {
    event.preventDefault();
    if(username==="" || password==="") {
      setFormMessage('Bitte alle Felder ausfüllen.');
    }else {
      sendData('http://localhost:80/backend/loginForm.php', document.getElementById('loginForm')).then(data => {
        setFormMessage(data.message);
        if(data.action === 1) {
          props.setLogin(true);
        }
      });
    }
  }

  return(
    <>
    <div id="loginFormCont">
	    <form id="loginForm" className="loginForm">
		    <h2>Login benötigt</h2>
		    <p><input type="text" name="username" placeholder="Benutzername" value={username} onChange={handleChange} /></p>
		    <p><input type="password" name="password" placeholder="Passwort" value={password} onChange={handleChange} /></p>
		    <p><input type="submit" value="Einloggen" onClick={handleSubmit} /></p>
	    </form>
      <MessageCont message={formMessage} />
    </div>
    </>
  );
}

export function Programs() {
  return (
    <>
    <main>
      <div className="programs lieferscheinprogrammCont">
        <Link className="emoji" to={"Lieferscheinprogramm/"}>Lieferscheinprogramm 📓
          <p>
            Lieferscheine schreiben und ausdrucken, Bestellungen zurückschreiben, sowie Rechnungen ausdrucken
          </p>
        </Link>
      </div>
    </main>
    </>
  )
}

function App() {

  const [isLoggedIn, setLoggedIn] = useState(false);

  fetch('http://localhost/backend/isLoggedIn.php', {
    method: 'POST',
    mode: 'cors',
    credentials: 'include'
  })
  .then(response => response.json())
  .then((data) => setLoggedIn(data.isLoggedIn));

  console.log("IsloggedIn: " + isLoggedIn);

  if(isLoggedIn === false) {
    return(
      <>
      <Header />
      <main>
        <Switch>
          <Route path="/" render={() => ( <LoginForm setLogin={setLoggedIn} /> )} />
          <Route path="/information" component={Information} />
        </Switch>
      </main>
      <Footer />
      </>
    );
  }else {
    return(
      <>
      <Header />
      <AllRouters />
      <Navigation setLogin={setLoggedIn} />
      </>
    );
  }
}

ReactDOM.render(
  <Router>
    <App />
  </Router>,
  document.getElementById('app')
);
