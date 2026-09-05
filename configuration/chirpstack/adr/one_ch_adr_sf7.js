// This must return the name of the ADR algorithm.
export function name() {
    return "Single Channel / SF7 ADR";
}

// This must return the id of the ADR algorithm.
export function id() {
    return "single-channel-sf7-adr";
}

export function handle(req) {
    let resp = {
        dr: 5,
        txPowerIndex: req.maxTxPowerIndex,
        nbTrans: 5
    }
    return resp;
}