import { LightningElement , track} from 'lwc';

export default class GreetingsComp extends LightningElement {
    @track Greetings;

    HandleClick (event){
        this.Greetings = event.target.value;
        log.console(this.Greetings);
    }
}