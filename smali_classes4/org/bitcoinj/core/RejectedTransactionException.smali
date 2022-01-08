.class public Lorg/bitcoinj/core/RejectedTransactionException;
.super Ljava/lang/Exception;
.source "RejectedTransactionException.java"


# instance fields
.field private rejectMessage:Lorg/bitcoinj/core/RejectMessage;

.field private tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/RejectMessage;)V
    .locals 1

    .line 30
    invoke-virtual {p2}, Lorg/bitcoinj/core/RejectMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lorg/bitcoinj/core/RejectedTransactionException;->tx:Lorg/bitcoinj/core/Transaction;

    .line 32
    iput-object p2, p0, Lorg/bitcoinj/core/RejectedTransactionException;->rejectMessage:Lorg/bitcoinj/core/RejectMessage;

    return-void
.end method


# virtual methods
.method public getRejectMessage()Lorg/bitcoinj/core/RejectMessage;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bitcoinj/core/RejectedTransactionException;->rejectMessage:Lorg/bitcoinj/core/RejectMessage;

    return-object v0
.end method

.method public getTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bitcoinj/core/RejectedTransactionException;->tx:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method
