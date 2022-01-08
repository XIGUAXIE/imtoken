.class public final enum Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
.super Ljava/lang/Enum;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

.field public static final enum AUTHENTICATION:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

.field public static final enum CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

.field public static final enum RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

.field public static final enum REFUND:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    const/4 v1, 0x0

    const-string v2, "RECEIVE_FUNDS"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    .line 43
    new-instance v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    const/4 v2, 0x1

    const-string v3, "CHANGE"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    .line 44
    new-instance v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    const/4 v3, 0x2

    const-string v4, "REFUND"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->REFUND:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    .line 45
    new-instance v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    const/4 v4, 0x3

    const-string v5, "AUTHENTICATION"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->AUTHENTICATION:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    .line 41
    sget-object v6, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->REFUND:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->$VALUES:[Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
    .locals 1

    .line 41
    const-class v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
    .locals 1

    .line 41
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->$VALUES:[Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    return-object v0
.end method
