import React from "react";

interface FactProps{
    fact: string,
    isTrue: string
}

class Fact extends React.Component<FactProps> {
    render() {
        return (
            <tr className={this.props.isTrue}>
                <td>{this.props.fact}</td>
            </tr>
        )
    }
}

export default Fact;