import React, { useState }  from 'react';
import {Link} from "react-router-dom";
import {MessageCont, sendData} from "./index";

function randomPassword() {
  var result           = '';
  var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+#!"§$%&/()=?.,;:<>';
  var charactersLength = characters.length;
  for ( var i = 0; i < 12; i++ ) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }

  return result;
}

export function Settings() {
  return (
    <>
    <main>
      <h2>Einstellungen</h2>
      <div id="allSettings">
	     <Link to={"/Settings/PersonalSettings/"}>Persönliche Einstellungen</Link>
	     <Link to={"/Settings/Accounts/"}>Mitarbeiter Konten</Link>
	     <Link to={"/Settings/AppInstall/"}>App installieren</Link>
      </div>
    </main>
    </>
  )
}

export function PersonalSettings() {

  const [password, setPassword] = useState('');
  const [password2, setPassword2] = useState('');
  const [formMessage, setFormMessage] = useState("");

  function handleChange(event) {
    console.log('i am used');
    event.target.name === "password" ? setPassword(event.target.value) : setPassword2(event.target.value);
  }

  function handleSubmit(event) {
    event.preventDefault();
    if(password==="" || password2==="") {
      setFormMessage('Bitte alle Felder ausfüllen.');
    }else if(password !== password2) {
      setFormMessage('Passwörter stimmen nicht überein.');
    }else {
      sendData('http://localhost:80/backend/changeAccountSettings.php', document.getElementById('changePasswordForm')).then(data => {
        setFormMessage(data.message);
        if(data.action === 1) {
          console.log(data);
        }
      });
    }
  }

  return (
    <>
    <main>
      <h2>Persönliche Einstellungen</h2>
      <form id="changePasswordForm">
        <p>Passwort ändern:</p>
        <input id="password" type="password" name="password" placeholder="Neues Passwort..." onChange={handleChange} />
        <input id="password2" type="password" name="password2" placeholder="Passwort wiederholen..." onChange={handleChange} />
        <input type="hidden" name="hidden" />
        <input id="passwordChangeSubmit" type="submit" name="submit" value="Absenden" onClick={handleSubmit} />
      </form>
      <MessageCont message={formMessage} />
    </main>
    </>
  )
}

export function Accounts() {

  const [toggleCreateNewAccount, setToggleCreateNewAccount] = useState(false);

  function handlePlusButton() {
    toggleCreateNewAccount === false ? setToggleCreateNewAccount(true) : setToggleCreateNewAccount(false);
  }

  return (
    <>
    <main>
      <h2>Mitarbeiter Konten bearbeiten</h2>
      <nav>
        <button onClick={handlePlusButton} className="emoji" id="mitarbeiterHinzufügenBtn">➕</button>
        <button className="emoji" id="sucheBtn">🔎</button>
      </nav>
      {toggleCreateNewAccount ? <CreateNewAccount /> : null}
    </main>
    </>
  )
}

export function CreateNewAccount() {

  const [vorname, setVorname] = useState("");
  const [nachname, setNachname] = useState("");
  const [selectedValue, setSelectedValue] = useState();
  const [password, setPassword] = useState(randomPassword());
  const [formMessage, setFormMessage] = useState("");

  function handleChange(event) {
    console.log('second is used');
    switch (event.target.name) {
      case 'vorname':
        setVorname(event.target.value);
      break;
      case 'nachname':
        setNachname(event.target.value);
      break;
      case 'password':
        setPassword(event.target.value);
      break;
      default:
      break;
    }
  }

  function handleSelect(event) {
    setSelectedValue(event.target.value);
  }

  function handleSubmit(event) {
    event.preventDefault();
    if(vorname==="" || nachname==="" || password==="") {
      setFormMessage('Bitte alle Felder ausfüllen.');
    }else {
      sendData('http://localhost/backend/saveAccount.php', document.getElementById('addAccountForm')).then(data => {
        setFormMessage(data.message);
      });
    }
  }

  return (
    <>
    <form id="addAccountForm">
      <input className="accountForm" type="text" id="vorname" name="vorname" placeholder="Vorname" onChange={handleChange} />
      <input className="accountForm" type="text" id="nachname" name="nachname" placeholder="Nachname" onChange={handleChange} />
      <div>Rang auswählen:</div>
      <select value={selectedValue} onChange={handleSelect} id="selectRang" className="accountForm" name="rang">
        <option value="3">Aushilfsarbeiter Rang</option>
        <option value="2">höherer Rang</option>
        <option value="1">Admin Rang</option>
      </select>
      <div>Automatisch erstelltes Passwort:</div> <input value={password} onChange={handleChange} type="text" className="accountForm" id="passwordGenerate" name="password" />
      <input onClick={handleSubmit} type="submit" name="submit" className="emoji accountForm" id="addSubmit" value="✔" />
    </form>
    <MessageCont message={formMessage} />
    </>
  )
}

export function AppInstall() {
  return (
    <>
    <main>
      <h2>App installieren</h2>
    </main>
    </>
  )
}
