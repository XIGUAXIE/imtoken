.class final Lorg/bitcoinj/protocols/payments/PaymentSession$1;
.super Ljava/lang/Object;
.source "PaymentSession.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/bitcoinj/protocols/payments/PaymentSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$trustStoreLoader:Lorg/bitcoinj/crypto/TrustStoreLoader;

.field final synthetic val$uri:Ljava/net/URI;

.field final synthetic val$verifyPki:Z


# direct methods
.method constructor <init>(Ljava/net/URI;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$uri:Ljava/net/URI;

    iput-boolean p2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$verifyPki:Z

    iput-object p3, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$trustStoreLoader:Lorg/bitcoinj/crypto/TrustStoreLoader;

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

    .line 172
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->call()Lorg/bitcoinj/protocols/payments/PaymentSession;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bitcoinj/protocols/payments/PaymentSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v2, "application/bitcoin-paymentrequest"

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 178
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    .line 179
    new-instance v1, Lorg/bitcoinj/protocols/payments/PaymentSession;

    iget-boolean v2, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$verifyPki:Z

    iget-object v3, p0, Lorg/bitcoinj/protocols/payments/PaymentSession$1;->val$trustStoreLoader:Lorg/bitcoinj/crypto/TrustStoreLoader;

    invoke-direct {v1, v0, v2, v3}, Lorg/bitcoinj/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V

    return-object v1
.end method
