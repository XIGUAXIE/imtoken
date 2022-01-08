.class public final enum Lorg/bitcoinj/core/TransactionInput$ConnectMode;
.super Ljava/lang/Enum;
.source "TransactionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/TransactionInput$ConnectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectMode;

.field public static final enum ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

.field public static final enum DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 303
    new-instance v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    const/4 v1, 0x0

    const-string v2, "DISCONNECT_ON_CONFLICT"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/TransactionInput$ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    .line 304
    new-instance v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    const/4 v2, 0x1

    const-string v3, "ABORT_ON_CONFLICT"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/TransactionInput$ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    .line 302
    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->$VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/TransactionInput$ConnectMode;
    .locals 1

    .line 302
    const-class v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/TransactionInput$ConnectMode;
    .locals 1

    .line 302
    sget-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->$VALUES:[Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/TransactionInput$ConnectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    return-object v0
.end method
