.class public Lorg/bitcoinj/crypto/MnemonicException$MnemonicWordException;
.super Lorg/bitcoinj/crypto/MnemonicException;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/MnemonicException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MnemonicWordException"
.end annotation


# instance fields
.field public final badWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/bitcoinj/crypto/MnemonicException;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bitcoinj/crypto/MnemonicException$MnemonicWordException;->badWord:Ljava/lang/String;

    return-void
.end method
