import Fact from "../facts/Fact";
import './TTAAL.css';

function TTAAL() {
    const facts = [
        {
            fact: 'My twin is a minute older than me.',
            isTrue: 'false'
        },
        {
            fact: 'I have a pet turtle named Harold.',
            isTrue: 'true'
        },
        {
            fact: 'My first skateboard was a Power Rangers skateboard',
            isTrue: 'true'
        }
    ]

    return (
        <main>
            <h4>Two Truths and a Lie:</h4>
            <table>
                {
                    facts.map( fact => {
                        return <Fact fact={fact.fact} isTrue={fact.isTrue} />
                    })
                }
            </table>
        </main>
    )
}

export default TTAAL;