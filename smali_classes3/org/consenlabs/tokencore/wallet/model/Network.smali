.class public Lorg/consenlabs/tokencore/wallet/model/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field public static final KOVAN:Ljava/lang/String; = "KOVAN"

.field public static final MAINNET:Ljava/lang/String; = "MAINNET"

.field public static final ROPSTEN:Ljava/lang/String; = "ROPSTEN"

.field public static final TESTNET:Ljava/lang/String; = "TESTNET"


# instance fields
.field private network:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/model/Network;->network:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isMainnet()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/model/Network;->network:Ljava/lang/String;

    const-string v1, "MAINNET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
