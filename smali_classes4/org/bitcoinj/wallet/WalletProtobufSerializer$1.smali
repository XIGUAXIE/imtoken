.class Lorg/bitcoinj/wallet/WalletProtobufSerializer$1;
.super Ljava/lang/Object;
.source "WalletProtobufSerializer.java"

# interfaces
.implements Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)Lorg/bitcoinj/wallet/Wallet;
    .locals 1

    .line 93
    new-instance v0, Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {v0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-object v0
.end method
