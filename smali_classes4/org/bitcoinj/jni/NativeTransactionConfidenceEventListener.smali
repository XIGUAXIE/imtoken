.class public Lorg/bitcoinj/jni/NativeTransactionConfidenceEventListener;
.super Ljava/lang/Object;
.source "NativeTransactionConfidenceEventListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onTransactionConfidenceChanged(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V
.end method
