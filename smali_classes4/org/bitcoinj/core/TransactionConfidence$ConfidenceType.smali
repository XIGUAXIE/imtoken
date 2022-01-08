.class public final enum Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
.super Ljava/lang/Enum;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfidenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field public static final enum BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field public static final enum DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field public static final enum IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field public static final enum PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field public static final enum UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 82
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BUILDING"

    invoke-direct {v0, v3, v2, v1}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 92
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v3, 0x2

    const-string v4, "PENDING"

    invoke-direct {v0, v4, v1, v3}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 100
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v4, 0x4

    const-string v5, "DEAD"

    invoke-direct {v0, v5, v3, v4}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 109
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v5, 0x5

    const/4 v6, 0x3

    const-string v7, "IN_CONFLICT"

    invoke-direct {v0, v7, v6, v5}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 114
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const-string v7, "UNKNOWN"

    invoke-direct {v0, v7, v4, v2}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    new-array v5, v5, [Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 80
    sget-object v7, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    aput-object v7, v5, v2

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    aput-object v2, v5, v1

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v5, v3

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v5, v6

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->$VALUES:[Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    .locals 1

    .line 80
    const-class v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    .locals 1

    .line 80
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->$VALUES:[Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->value:I

    return v0
.end method
