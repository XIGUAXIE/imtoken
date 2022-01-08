.class Lorg/bitcoinj/protocols/payments/PaymentSession$2;
.super Ljava/lang/Object;
.source "PaymentSession.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/payments/PaymentSession;->sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/payments/PaymentSession;

.field final synthetic val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/payments/PaymentSession;Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->this$0:Lorg/bitcoinj/protocols/payments/PaymentSession;

    iput-object p2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->call()Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    .line 360
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/bitcoin-payment"

    .line 361
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/bitcoin-paymentack"

    .line 362
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getSerializedSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 366
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 369
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    iget-object v2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v2, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->writeTo(Ljava/io/OutputStream;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 372
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 375
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->parsePaymentAck(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;

    move-result-object v0

    return-object v0
.end method
