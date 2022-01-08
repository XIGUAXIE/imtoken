.class public Lorg/bitcoinj/protocols/payments/PaymentProtocol;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
    }
.end annotation


# static fields
.field public static final MIMETYPE_PAYMENT:Ljava/lang/String; = "application/bitcoin-payment"

.field public static final MIMETYPE_PAYMENTACK:Ljava/lang/String; = "application/bitcoin-paymentack"

.field public static final MIMETYPE_PAYMENTREQUEST:Ljava/lang/String; = "application/bitcoin-paymentrequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPayToAddressOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 3
    .param p0    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 401
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 403
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Amount too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_1
    :goto_0
    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 410
    :goto_1
    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 411
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p0

    return-object p0
.end method

.method public static createPaymentAck(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 377
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 381
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object p0

    return-object p0
.end method

.method public static createPaymentMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;",
            "Ljava/lang/String;",
            "[B)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;"
        }
    .end annotation

    .line 318
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    .line 319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 320
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 321
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addTransactions(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 325
    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 328
    invoke-virtual {v0, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    :cond_2
    if-eqz p3, :cond_3

    .line 330
    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 331
    :cond_3
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p0

    return-object p0
.end method

.method public static createPaymentMessage(Ljava/util/List;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 0
    .param p1    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/Coin;",
            "Lorg/bitcoinj/core/Address;",
            "Ljava/lang/String;",
            "[B)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 301
    invoke-static {p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPayToAddressOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 300
    invoke-static {p0, p1, p3, p4}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPaymentMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p0

    return-object p0

    .line 299
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specify refund amount if refund address is specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 303
    invoke-static {p0, p1, p3, p4}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPaymentMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object p0

    return-object p0
.end method

.method public static createPaymentRequest(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getPaymentProtocolId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setNetwork(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 92
    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {v0, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    :cond_1
    if-eqz p3, :cond_2

    .line 96
    invoke-virtual {v0, p3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setPaymentUrl(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    :cond_2
    if-eqz p4, :cond_3

    .line 98
    invoke-static {p4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 99
    :cond_3
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 101
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    return-object p0
.end method

.method public static createPaymentRequest(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;Ljava/lang/String;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 0
    .param p1    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-static {p1, p2}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPayToAddressOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0, p1, p3, p4, p5}, Lorg/bitcoinj/protocols/payments/PaymentProtocol;->createPaymentRequest(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parsePaymentAck(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 389
    :goto_0
    new-instance v0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;

    invoke-direct {v0, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parsePaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoinj/protocols/payments/PaymentSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    .line 115
    new-instance v0, Lorg/bitcoinj/protocols/payments/PaymentSession;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/bitcoinj/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLorg/bitcoinj/crypto/TrustStoreLoader;)V

    return-object v0
.end method

.method public static parseTransactionsFromPaymentMessage(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 345
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static signPaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 4

    .line 129
    :try_start_0
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    .line 130
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 131
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->addCertificate(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "x509+sha256"

    .line 133
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiType(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 134
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 135
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 136
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object p1

    const-string v0, "RSA"

    .line 139
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA256withRSA"

    .line 144
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 146
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 148
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    return-void

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static verifyPaymentRequestPki(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/security/KeyStore;)Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "x509+sha256"

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SHA256withRSA"

    goto :goto_0

    :cond_1
    const-string v2, "x509+sha1"

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "SHA1withRSA"

    .line 181
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateCount()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "X.509"

    .line 188
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 189
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :try_start_1
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 191
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    const/4 p1, 0x0

    .line 197
    invoke-virtual {v3, p1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string v5, "PKIX"

    .line 200
    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v2, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 202
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 204
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 209
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v5

    .line 210
    sget-object v6, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5, v6}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 211
    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/Signature;->update([B)V

    .line 212
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 216
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    const/4 p1, 0x1

    .line 217
    invoke-static {p0, p1}, Lorg/bitcoinj/crypto/X509Utils;->getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 221
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;

    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v1

    invoke-direct {p1, p0, v3, v1, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;Lorg/bitcoinj/protocols/payments/PaymentProtocol$1;)V

    return-object p1

    .line 219
    :cond_3
    new-instance p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    const-string p1, "Could not extract name from certificate"

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_4
    new-instance p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    const-string p1, "Invalid signature, this payment request is not valid."

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_2

    .line 183
    :cond_5
    :try_start_2
    new-instance p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;

    const-string p1, "No certificates provided in message: server config error"

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_6
    new-instance p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PKI type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiType;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 244
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 242
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    .line 239
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_4
    move-exception p0

    .line 236
    :goto_2
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    invoke-direct {p1, p0, v0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    throw p1

    :catch_5
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    .line 230
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p0

    .line 227
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_8
    move-exception p0

    .line 224
    new-instance p1, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;

    invoke-direct {p1, p0}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
