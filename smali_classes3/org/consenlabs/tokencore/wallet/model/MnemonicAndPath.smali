.class public Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;
.super Ljava/lang/Object;
.source "MnemonicAndPath.java"


# instance fields
.field private final mnemonic:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->path:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->mnemonic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMnemonic()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->mnemonic:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->path:Ljava/lang/String;

    return-object v0
.end method
