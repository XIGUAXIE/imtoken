.class public Lorg/consenlabs/tokencore/wallet/model/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FROM_KEYSTORE:Ljava/lang/String; = "KEYSTORE"

.field public static final FROM_MNEMONIC:Ljava/lang/String; = "MNEMONIC"

.field public static final FROM_NEW_IDENTITY:Ljava/lang/String; = "NEW_IDENTITY"

.field public static final FROM_PRIVATE:Ljava/lang/String; = "PRIVATE"

.field public static final FROM_RECOVERED_IDENTITY:Ljava/lang/String; = "RECOVERED_IDENTITY"

.field public static final FROM_WIF:Ljava/lang/String; = "WIF"

.field public static final HD:Ljava/lang/String; = "HD"

.field public static final HD_SHA256:Ljava/lang/String; = "HD_SHA256"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final P2WPKH:Ljava/lang/String; = "P2WPKH"

.field public static final RANDOM:Ljava/lang/String; = "RANDOM"

.field public static final V3:Ljava/lang/String; = "V3"


# instance fields
.field private backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chainType:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private passwordHint:Ljava/lang/String;

.field private segWit:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private timestamp:J

.field private walletType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    const-string v0, "NORMAL"

    .line 34
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->mode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    const-string v0, "NORMAL"

    .line 34
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->mode:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->chainType:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->name:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->passwordHint:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    iput-wide p3, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->timestamp:J

    .line 70
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->network:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    const-string v0, "NORMAL"

    .line 34
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->mode:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->chainType:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->name:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->passwordHint:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    iput-wide p3, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->timestamp:J

    .line 78
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->network:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->segWit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->clone()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 3

    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    return-object v0

    .line 50
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Clone metadata filed"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->chainType:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->passwordHint:Ljava/lang/String;

    return-object v0
.end method

.method public getSegWit()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->segWit:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->timestamp:J

    return-wide v0
.end method

.method public getWalletType()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->walletType:Ljava/lang/String;

    return-object v0
.end method

.method public isMainNet()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->network:Ljava/lang/String;

    const-string v1, "MAINNET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setBackup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->backup:Ljava/util/List;

    return-void
.end method

.method public setChainType(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->chainType:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->mode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->name:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->network:Ljava/lang/String;

    return-void
.end method

.method public setPasswordHint(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->passwordHint:Ljava/lang/String;

    return-void
.end method

.method public setSegWit(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->segWit:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->source:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->timestamp:J

    return-void
.end method

.method public setWalletType(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Metadata;->walletType:Ljava/lang/String;

    return-void
.end method
