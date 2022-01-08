.class public final enum Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;
.super Ljava/lang/Enum;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/AbstractBlockChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NewBlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

.field public static final enum BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

.field public static final enum SIDE_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 866
    new-instance v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    const/4 v1, 0x0

    const-string v2, "BEST_CHAIN"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    .line 867
    new-instance v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    const/4 v2, 0x1

    const-string v3, "SIDE_CHAIN"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->SIDE_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    .line 865
    sget-object v4, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->$VALUES:[Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 865
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;
    .locals 1

    .line 865
    const-class v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;
    .locals 1

    .line 865
    sget-object v0, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->$VALUES:[Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    return-object v0
.end method
