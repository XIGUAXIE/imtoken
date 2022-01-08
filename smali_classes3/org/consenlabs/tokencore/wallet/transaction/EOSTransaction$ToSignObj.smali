.class public Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;
.super Ljava/lang/Object;
.source "EOSTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToSignObj"
.end annotation


# instance fields
.field private publicKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private txHex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->txHex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->publicKeys:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getPublicKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->publicKeys:Ljava/util/List;

    return-object v0
.end method

.method public getTxHex()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->txHex:Ljava/lang/String;

    return-object v0
.end method

.method public setPublicKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->publicKeys:Ljava/util/List;

    return-void
.end method

.method public setTxHex(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->txHex:Ljava/lang/String;

    return-void
.end method
