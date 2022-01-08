.class public interface abstract Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "RiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/RiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Analyzer"
.end annotation


# virtual methods
.method public abstract create(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Lorg/bitcoinj/wallet/RiskAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Lorg/bitcoinj/wallet/RiskAnalysis;"
        }
    .end annotation
.end method
