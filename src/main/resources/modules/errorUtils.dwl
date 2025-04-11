%dw 2.0
fun buildErrorResponse(transactionId, flowName, error) =
  {
    timestamp: now() as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ"},
    transactionId: transactionId,
    flowName: flowName,
    errorComponentPath: error.failingComponent as String,
    errorMessage: error.description
  }
