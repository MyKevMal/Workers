import React  from 'react';
import {
  Switch,
  Route,
} from "react-router-dom";
import {Settings, PersonalSettings, Accounts, AppInstall} from "./settings";
import {Lieferscheinprogramm} from "./lieferscheinprogramm";
import {Lieferschein} from "./lieferschein";
import {LieferscheinSchreiben} from "./ls";
import {Programs} from "./index";

export function AllRouters() {
  return (
    <Switch>
      <Route exact path="/" component={Programs} />
      <Route exact path="/Lieferscheinprogramm" component={Lieferscheinprogramm} />
      <Route path="/Lieferscheinprogramm/Lieferschein" component={Lieferschein} />
      <Route exact path="/Settings/" component={Settings} />
      <Route path="/Settings/PersonalSettings/" component={PersonalSettings} />
      <Route path="/Settings/Accounts/" component={Accounts} />
      <Route path="/Settings/AppInstall/" component={AppInstall} />
      <Route path="/Lieferscheinprogramm/LieferscheinSchreiben/" component={LieferscheinSchreiben} />
    </Switch>
  )
}
