.class public final enum Lorg/bitcoinj/wallet/BasicKeyChain$State;
.super Ljava/lang/Enum;
.source "BasicKeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/BasicKeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/wallet/BasicKeyChain$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/BasicKeyChain$State;

.field public static final enum EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

.field public static final enum REGULAR:Lorg/bitcoinj/wallet/BasicKeyChain$State;

.field public static final enum WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 236
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;

    const/4 v1, 0x0

    const-string v2, "EMPTY"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/BasicKeyChain$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    .line 237
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;

    const/4 v2, 0x1

    const-string v3, "WATCHING"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/wallet/BasicKeyChain$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    .line 238
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;

    const/4 v3, 0x2

    const-string v4, "REGULAR"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/wallet/BasicKeyChain$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->REGULAR:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/wallet/BasicKeyChain$State;

    .line 235
    sget-object v5, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/wallet/BasicKeyChain$State;->$VALUES:[Lorg/bitcoinj/wallet/BasicKeyChain$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/BasicKeyChain$State;
    .locals 1

    .line 235
    const-class v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/BasicKeyChain$State;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/wallet/BasicKeyChain$State;
    .locals 1

    .line 235
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->$VALUES:[Lorg/bitcoinj/wallet/BasicKeyChain$State;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/BasicKeyChain$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/BasicKeyChain$State;

    return-object v0
.end method
