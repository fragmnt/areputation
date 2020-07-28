import React from 'react';
import {connect} from "@aragon/connect";
import web3 from './shared/web3';

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
        this.connectToDAO = this.connectToDAO.bind(this);
    };

    componentDidMount = () => {};

    connectToDAO = async(organizationId) => {
        let org = await connect(organizationId.toString, 'thegraph'); // chainId for other networks 
    }

    render() {
        return (
            <>
                Reputation Building App;
            </>
        )
    }
}

export default App;