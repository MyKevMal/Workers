import ReactDOM from 'react-dom';
import React, { useState, useEffect }  from 'react';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import {Header, Footer, Information} from "./frames";

async function sendData(url, data) {

  const response = await fetch(url, {
    credentials: 'include',
    method: 'POST',
    body: new FormData(data)
  });

  return response.json();
}

function MessageCont(props) {

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
    if(username=="" || password=="") {
      setFormMessage('Bitte alle Felder ausfüllen.');
    }else {
      sendData('http://localhost:80/backend/loginForm.php', document.getElementById('loginForm')).then(data => {
        setFormMessage(data.message);
        if(data.action == 1) {
          console.log(data.id);
          props.setLogin(true);
        }
      });
    }
  }

  return(
    <>
    <div id="loginFormCont">
	    <form id="loginForm" className="loginForm" method="post">
		    <h2>Login benötigt</h2>
		    <p><input type="text" name="username" placeholder="Benutzername" value={username} onChange={handleChange} /></p>
		    <p><input type="password" name="password" placeholder="Passwort" value={password} onChange={handleChange} /></p>
		    <p><input type="submit" value="Einloggen" onClick={handleSubmit} /></p>
        <MessageCont message={formMessage} />
	    </form>
    </div>
    </>
  );
}

function Programs() {
  return (
    <>
    <div className="programs lieferscheinprogrammCont">
      <Link className="emoji" to={"lieferscheinprogramm/"}>Lieferscheinprogramm 📓
        <p>
          Lieferscheine schreiben und ausdrucken, Bestellungen zurückschreiben, sowie Rechnungen ausdrucken
        </p>
      </Link>
    </div>
    </>
  )
}

function App() {

  const [isLoggedIn, setLoggedIn] = useState();
/*
  const loginResponse = fetch('http://localhost:80/backend/isLoggedIn.php')
  .then(loginResponse => loginResponse.json())
  .then((loginResponse) => {
    console.log("loginResponse: " + loginResponse.isLoggedIn);
    setLoggedIn(loginResponse.isLoggedIn);
  });*/
  useEffect(() => {
    fetch('http://localhost/backend/isLoggedIn.php', {
      method: 'POST',
      mode: 'cors',
      credentials: 'include'
    })
    .then(response => response.json())
    .then((data) => {

      console.log(data.id);
      setLoggedIn(data.isLoggedIn)
    });
  });

  console.log("IsloggedIn: " + isLoggedIn);

  if(isLoggedIn == false) {
    return(
      <>
      <Header />
      <main>
        <Switch>
          <Route exact path="/" render={() => ( <LoginForm setLogin={setLoggedIn} /> )} />
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
      <main>
        <Switch>
          <Route exact path="/" component={Programs} />
        </Switch>
      </main>
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
