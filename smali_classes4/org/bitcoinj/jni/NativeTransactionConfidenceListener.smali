.class public Lorg/bitcoinj/jni/NativeTransactionConfidenceListener;
.super Ljava/lang/Object;
.source "NativeTransactionConfidenceListener.java"

# interfaces
.implements Lorg/bitcoinj/core/TransactionConfidence$Listener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
.end method
