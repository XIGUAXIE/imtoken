.class public Lorg/consenlabs/tokencore/wallet/model/ChainType;
.super Ljava/lang/Object;
.source "ChainType.java"


# static fields
.field public static final BITCOIN:Ljava/lang/String; = "BITCOIN"

.field public static final COSMOS:Ljava/lang/String; = "COSMOS"

.field public static final EOS:Ljava/lang/String; = "EOS"

.field public static final ETHEREUM:Ljava/lang/String; = "ETHEREUM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ETHEREUM"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BITCOIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EOS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "COSMOS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "unsupported_chain"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
