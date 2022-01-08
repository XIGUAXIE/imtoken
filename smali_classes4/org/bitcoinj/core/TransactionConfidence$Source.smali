.class public final enum Lorg/bitcoinj/core/TransactionConfidence$Source;
.super Ljava/lang/Enum;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/TransactionConfidence$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/TransactionConfidence$Source;

.field public static final enum NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

.field public static final enum SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

.field public static final enum UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 138
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$Source;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    .line 140
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$Source;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    .line 142
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$Source;

    const/4 v3, 0x2

    const-string v4, "SELF"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/bitcoinj/core/TransactionConfidence$Source;

    .line 136
    sget-object v5, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    aput-object v5, v4, v1

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/bitcoinj/core/TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/core/TransactionConfidence$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/TransactionConfidence$Source;
    .locals 1

    .line 136
    const-class v0, Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/TransactionConfidence$Source;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/TransactionConfidence$Source;
    .locals 1

    .line 136
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/TransactionConfidence$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/TransactionConfidence$Source;

    return-object v0
.end method
