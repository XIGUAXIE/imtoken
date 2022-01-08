.class public Lorg/bitcoinj/protocols/payments/PaymentSession;
.super Ljava/lang/Object;
.source "PaymentSession.java"


# static fields
.field private static executor:Lcom/google/common/util/concurrent/ListeningExecutorService;


# instance fields
.field private params:Lorg/bitcoinj/core/NetworkParameters;

.field private paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

.field private paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

.field public final pkiVerificationData:Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private totalValue:Lorg/bitcoinj/core/Coin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    sget-object v0, Lorg/bitcoinj/utils/Threading;->THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

    sput-object v0, Lorg/bitcoinj/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V
    .locals 1
    .param p3    # Lorg/bitcoinj/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iput-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance p3, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;

    invoke-direct {p3}, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;-><init>()V

    .line 207
    :goto_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentSession;->parsePaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V

    if-eqz p2, :cond_1

    .line 210
    :try_start_0
    invoke-interface {p3}, Lorg/bitcoinj/crypto/TrustStoreLoader;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->verifyPaymentRequestPki(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/security/KeyStore;)Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->pkiVerificationData:Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 212
    new-instance p2, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->pkiVerificationData:Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;

    :goto_1
    return-void
.end method

.method public static createFromBitcoinUri(Lorg/bitcoinj/uri/BitcoinURI;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/uri/BitcoinURI;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lorg/bitcoinj/protocols/payments/PaymentSession;->createFromBitcoinUri(Lorg/bitcoinj/uri/BitcoinURI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitcoinUri(Lorg/bitcoinj/uri/BitcoinURI;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/uri/BitcoinURI;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentSession;->createFromBitcoinUri(Lorg/bitcoinj/uri/BitcoinURI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitcoinUri(Lorg/bitcoinj/uri/BitcoinURI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2    # Lorg/bitcoinj/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/uri/BitcoinURI;",
            "Z",
            "Lorg/bitcoinj/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/bitcoinj/uri/BitcoinURI;->getPaymentRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 121
    :cond_0
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No payment request URL (r= parameter) in BitcoinURI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createFromUrl(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-static {p0, v0, v1}, Lorg/bitcoinj/protocols/payments/PaymentSession;->createFromUrl(Ljava/lang/String;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static createFromUrl(Ljava/lang/String;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    invoke-static {p0, p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentSession;->createFromUrl(Ljava/lang/String;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static createFromUrl(Ljava/lang/String;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2    # Lorg/bitcoinj/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lorg/bitcoinj/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 163
    :cond_0
    new-instance p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;

    const-string p1, "null paymentRequestUrl"

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fetchPaymentRequest(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2    # Lorg/bitcoinj/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Z",
            "Lorg/bitcoinj/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .line 172
    sget-object v0, Lorg/bitcoinj/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lorg/bitcoinj/protocols/payments/PaymentSession$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentSession$1;-><init>(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private parsePaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 385
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 387
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .line 388
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    if-eqz p1, :cond_7

    .line 393
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    .line 394
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/NetworkParameters;->fromPmtProtocolID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 397
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    if-eqz p1, :cond_6

    .line 399
    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result p1

    if-lt p1, v1, :cond_5

    .line 401
    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 402
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasAmount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    goto :goto_1

    .line 407
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_2

    .line 408
    :cond_3
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidOutputs;

    const-string v0, "The outputs are way too big."

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidOutputs;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void

    .line 400
    :cond_5
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidOutputs;

    const-string v0, "No outputs"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidOutputs;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_6
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_7
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    const-string v0, "Invalid PaymentDetails"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_8
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    const-string v0, "No PaymentDetails"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_9
    new-instance v0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidVersion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version 1 required. Received version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidVersion;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 384
    :cond_a
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    const-string v0, "request cannot be null"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_3
    new-instance v0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 5

    .line 254
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMerchantData()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMerchantData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 227
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 228
    :goto_1
    new-instance v4, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;-><init>(Lorg/bitcoinj/core/Coin;[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPayment(Ljava/util/List;Lorg/bitcoinj/core/Address;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 3
    .param p2    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/Address;",
            "Ljava/lang/String;",
            ")",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 346
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;

    iget-object p2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p2}, Lorg/bitcoinj/core/NetworkParameters;->getPaymentProtocolId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/payments/PaymentSession;->getMerchantData()[B

    move-result-object v1

    invoke-static {p1, v0, p2, p3, v1}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPaymentMessage(Ljava/util/List;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPaymentDetails()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public getPaymentRequest()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendRequest()Lorg/bitcoinj/wallet/SendRequest;
    .locals 7

    .line 299
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 300
    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 301
    new-instance v3, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v4, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v4, v0, v5, v2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/SendRequest;->fromPaymentDetails(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->totalValue:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    .line 271
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;",
            ">;"
        }
    .end annotation

    .line 356
    sget-object v0, Lorg/bitcoinj/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lorg/bitcoinj/protocols/payments/PaymentSession$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentSession$2;-><init>(Lorg/bitcoinj/protocols/payments/PaymentSession;Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public sendPayment(Ljava/util/List;Lorg/bitcoinj/core/Address;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p2    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/Address;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;,
            Lorg/bitcoinj/core/VerificationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/protocols/payments/PaymentSession;->getPayment(Ljava/util/List;Lorg/bitcoinj/core/Address;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/payments/PaymentSession;->isExpired()Z

    move-result p2

    if-nez p2, :cond_1

    .line 326
    :try_start_0
    new-instance p2, Ljava/net/URL;

    iget-object p3, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {p3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/protocols/payments/PaymentSession;->sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 328
    new-instance p2, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentURL;

    invoke-direct {p2, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentURL;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 323
    :cond_1
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$Expired;

    const-string p2, "PaymentRequest is expired"

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$Expired;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyPki()Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession;->pkiVerificationData:Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;

    return-object v0
.end method
