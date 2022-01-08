.class public interface abstract Lorg/bitcoinj/core/TransactionConfidence$Listener;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;
    }
.end annotation


# virtual methods
.method public abstract onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
.end method
