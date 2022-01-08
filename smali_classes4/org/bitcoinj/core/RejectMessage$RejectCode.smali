.class public final enum Lorg/bitcoinj/core/RejectMessage$RejectCode;
.super Ljava/lang/Enum;
.source "RejectMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/RejectMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RejectCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/RejectMessage$RejectCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum CHECKPOINT:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum DUPLICATE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum DUST:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum INSUFFICIENTFEE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum INVALID:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum MALFORMED:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum NONSTANDARD:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum OBSOLETE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field public static final enum OTHER:Lorg/bitcoinj/core/RejectMessage$RejectCode;


# instance fields
.field code:B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 35
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MALFORMED"

    invoke-direct {v0, v3, v1, v2}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->MALFORMED:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 37
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const-string v3, "INVALID"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v2, v4}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->INVALID:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 39
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v3, 0x2

    const-string v4, "OBSOLETE"

    const/16 v5, 0x11

    invoke-direct {v0, v4, v3, v5}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->OBSOLETE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 44
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v4, 0x3

    const-string v5, "DUPLICATE"

    const/16 v6, 0x12

    invoke-direct {v0, v5, v4, v6}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->DUPLICATE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 51
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v5, 0x4

    const-string v6, "NONSTANDARD"

    const/16 v7, 0x40

    invoke-direct {v0, v6, v5, v7}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->NONSTANDARD:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 56
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v6, 0x5

    const-string v7, "DUST"

    const/16 v8, 0x41

    invoke-direct {v0, v7, v6, v8}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->DUST:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 58
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v7, 0x6

    const-string v8, "INSUFFICIENTFEE"

    const/16 v9, 0x42

    invoke-direct {v0, v8, v7, v9}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->INSUFFICIENTFEE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 60
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v8, 0x7

    const-string v9, "CHECKPOINT"

    const/16 v10, 0x43

    invoke-direct {v0, v9, v8, v10}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->CHECKPOINT:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 61
    new-instance v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/16 v9, 0x8

    const-string v10, "OTHER"

    const/4 v11, -0x1

    invoke-direct {v0, v10, v9, v11}, Lorg/bitcoinj/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->OTHER:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 33
    sget-object v11, Lorg/bitcoinj/core/RejectMessage$RejectCode;->MALFORMED:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v11, v10, v1

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->INVALID:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v2

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->OBSOLETE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v3

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->DUPLICATE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v4

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->NONSTANDARD:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v5

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->DUST:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v6

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->INSUFFICIENTFEE:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v7

    sget-object v1, Lorg/bitcoinj/core/RejectMessage$RejectCode;->CHECKPOINT:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lorg/bitcoinj/core/RejectMessage$RejectCode;->$VALUES:[Lorg/bitcoinj/core/RejectMessage$RejectCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->code:B

    return-void
.end method

.method static fromCode(B)Lorg/bitcoinj/core/RejectMessage$RejectCode;
    .locals 5

    .line 66
    invoke-static {}, Lorg/bitcoinj/core/RejectMessage$RejectCode;->values()[Lorg/bitcoinj/core/RejectMessage$RejectCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    iget-byte v4, v3, Lorg/bitcoinj/core/RejectMessage$RejectCode;->code:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    sget-object p0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->OTHER:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/RejectMessage$RejectCode;
    .locals 1

    .line 33
    const-class v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/RejectMessage$RejectCode;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/RejectMessage$RejectCode;
    .locals 1

    .line 33
    sget-object v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->$VALUES:[Lorg/bitcoinj/core/RejectMessage$RejectCode;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/RejectMessage$RejectCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/RejectMessage$RejectCode;

    return-object v0
.end method
