.class public Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;
.super Ljava/lang/Exception;
.source "PaymentChannelCloseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    }
.end annotation


# instance fields
.field private final error:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;->error:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-void
.end method


# virtual methods
.method public getCloseReason()Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;->error:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentChannelCloseException for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;->getCloseReason()Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
