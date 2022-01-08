.class public final enum Lio/sentry/SpanStatus;
.super Ljava/lang/Enum;
.source "SpanStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SpanStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SpanStatus;

.field public static final enum ABORTED:Lio/sentry/SpanStatus;

.field public static final enum ALREADY_EXISTS:Lio/sentry/SpanStatus;

.field public static final enum CANCELLED:Lio/sentry/SpanStatus;

.field public static final enum DATA_LOSS:Lio/sentry/SpanStatus;

.field public static final enum DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

.field public static final enum FAILED_PRECONDITION:Lio/sentry/SpanStatus;

.field public static final enum INTERNAL_ERROR:Lio/sentry/SpanStatus;

.field public static final enum INVALID_ARGUMENT:Lio/sentry/SpanStatus;

.field public static final enum NOT_FOUND:Lio/sentry/SpanStatus;

.field public static final enum OK:Lio/sentry/SpanStatus;

.field public static final enum OUT_OF_RANGE:Lio/sentry/SpanStatus;

.field public static final enum PERMISSION_DENIED:Lio/sentry/SpanStatus;

.field public static final enum RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

.field public static final enum UNAUTHENTICATED:Lio/sentry/SpanStatus;

.field public static final enum UNAVAILABLE:Lio/sentry/SpanStatus;

.field public static final enum UNIMPLEMENTED:Lio/sentry/SpanStatus;

.field public static final enum UNKNOWN:Lio/sentry/SpanStatus;

.field public static final enum UNKNOWN_ERROR:Lio/sentry/SpanStatus;


# instance fields
.field private final maxHttpStatusCode:I

.field private final minHttpStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v1, 0x0

    const-string v2, "OK"

    const/16 v3, 0xc8

    const/16 v4, 0x12b

    invoke-direct {v0, v2, v1, v3, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 10
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    const/16 v4, 0x1f3

    invoke-direct {v0, v3, v2, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    .line 15
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v3, 0x2

    const/16 v4, 0x1f4

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v0, v5, v3, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    .line 17
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v5, 0x3

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNKNOWN:Lio/sentry/SpanStatus;

    .line 19
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v6, 0x4

    const-string v7, "UNKNOWN_ERROR"

    invoke-direct {v0, v7, v6, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNKNOWN_ERROR:Lio/sentry/SpanStatus;

    .line 21
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v7, 0x5

    const/16 v8, 0x190

    const-string v9, "INVALID_ARGUMENT"

    invoke-direct {v0, v9, v7, v8}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->INVALID_ARGUMENT:Lio/sentry/SpanStatus;

    .line 23
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v9, 0x6

    const-string v10, "DEADLINE_EXCEEDED"

    const/16 v11, 0x1f8

    invoke-direct {v0, v10, v9, v11}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 26
    new-instance v0, Lio/sentry/SpanStatus;

    const/4 v10, 0x7

    const-string v11, "NOT_FOUND"

    const/16 v12, 0x194

    invoke-direct {v0, v11, v10, v12}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->NOT_FOUND:Lio/sentry/SpanStatus;

    .line 29
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v11, 0x199

    const/16 v12, 0x8

    const-string v13, "ALREADY_EXISTS"

    invoke-direct {v0, v13, v12, v11}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->ALREADY_EXISTS:Lio/sentry/SpanStatus;

    .line 32
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v13, 0x9

    const-string v14, "PERMISSION_DENIED"

    const/16 v15, 0x193

    invoke-direct {v0, v14, v13, v15}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->PERMISSION_DENIED:Lio/sentry/SpanStatus;

    .line 35
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v14, 0xa

    const-string v15, "RESOURCE_EXHAUSTED"

    const/16 v13, 0x1ad

    invoke-direct {v0, v15, v14, v13}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

    .line 38
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v13, 0xb

    const-string v15, "FAILED_PRECONDITION"

    invoke-direct {v0, v15, v13, v8}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->FAILED_PRECONDITION:Lio/sentry/SpanStatus;

    .line 41
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v15, 0xc

    const-string v13, "ABORTED"

    invoke-direct {v0, v13, v15, v11}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    .line 44
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v11, 0xd

    const-string v13, "OUT_OF_RANGE"

    invoke-direct {v0, v13, v11, v8}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->OUT_OF_RANGE:Lio/sentry/SpanStatus;

    .line 47
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v8, 0xe

    const-string v13, "UNIMPLEMENTED"

    const/16 v11, 0x1f5

    invoke-direct {v0, v13, v8, v11}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNIMPLEMENTED:Lio/sentry/SpanStatus;

    .line 50
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v11, 0xf

    const-string v13, "UNAVAILABLE"

    const/16 v8, 0x1f7

    invoke-direct {v0, v13, v11, v8}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNAVAILABLE:Lio/sentry/SpanStatus;

    .line 53
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v8, 0x10

    const-string v13, "DATA_LOSS"

    invoke-direct {v0, v13, v8, v4}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->DATA_LOSS:Lio/sentry/SpanStatus;

    .line 56
    new-instance v0, Lio/sentry/SpanStatus;

    const/16 v4, 0x11

    const-string v13, "UNAUTHENTICATED"

    const/16 v8, 0x191

    invoke-direct {v0, v13, v4, v8}, Lio/sentry/SpanStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SpanStatus;->UNAUTHENTICATED:Lio/sentry/SpanStatus;

    const/16 v8, 0x12

    new-array v8, v8, [Lio/sentry/SpanStatus;

    .line 6
    sget-object v13, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    aput-object v13, v8, v1

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    aput-object v1, v8, v2

    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    aput-object v1, v8, v3

    sget-object v1, Lio/sentry/SpanStatus;->UNKNOWN:Lio/sentry/SpanStatus;

    aput-object v1, v8, v5

    sget-object v1, Lio/sentry/SpanStatus;->UNKNOWN_ERROR:Lio/sentry/SpanStatus;

    aput-object v1, v8, v6

    sget-object v1, Lio/sentry/SpanStatus;->INVALID_ARGUMENT:Lio/sentry/SpanStatus;

    aput-object v1, v8, v7

    sget-object v1, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    aput-object v1, v8, v9

    sget-object v1, Lio/sentry/SpanStatus;->NOT_FOUND:Lio/sentry/SpanStatus;

    aput-object v1, v8, v10

    sget-object v1, Lio/sentry/SpanStatus;->ALREADY_EXISTS:Lio/sentry/SpanStatus;

    aput-object v1, v8, v12

    sget-object v1, Lio/sentry/SpanStatus;->PERMISSION_DENIED:Lio/sentry/SpanStatus;

    const/16 v2, 0x9

    aput-object v1, v8, v2

    sget-object v1, Lio/sentry/SpanStatus;->RESOURCE_EXHAUSTED:Lio/sentry/SpanStatus;

    aput-object v1, v8, v14

    sget-object v1, Lio/sentry/SpanStatus;->FAILED_PRECONDITION:Lio/sentry/SpanStatus;

    const/16 v2, 0xb

    aput-object v1, v8, v2

    sget-object v1, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    aput-object v1, v8, v15

    sget-object v1, Lio/sentry/SpanStatus;->OUT_OF_RANGE:Lio/sentry/SpanStatus;

    const/16 v2, 0xd

    aput-object v1, v8, v2

    sget-object v1, Lio/sentry/SpanStatus;->UNIMPLEMENTED:Lio/sentry/SpanStatus;

    const/16 v2, 0xe

    aput-object v1, v8, v2

    sget-object v1, Lio/sentry/SpanStatus;->UNAVAILABLE:Lio/sentry/SpanStatus;

    aput-object v1, v8, v11

    sget-object v1, Lio/sentry/SpanStatus;->DATA_LOSS:Lio/sentry/SpanStatus;

    const/16 v2, 0x10

    aput-object v1, v8, v2

    aput-object v0, v8, v4

    sput-object v8, Lio/sentry/SpanStatus;->$VALUES:[Lio/sentry/SpanStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    .line 63
    iput p3, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    .line 68
    iput p4, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    return-void
.end method

.method public static fromHttpStatusCode(I)Lio/sentry/SpanStatus;
    .locals 5

    .line 78
    invoke-static {}, Lio/sentry/SpanStatus;->values()[Lio/sentry/SpanStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    invoke-direct {v3, p0}, Lio/sentry/SpanStatus;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromHttpStatusCode(ILio/sentry/SpanStatus;)Lio/sentry/SpanStatus;
    .locals 0

    .line 95
    invoke-static {p0}, Lio/sentry/SpanStatus;->fromHttpStatusCode(I)Lio/sentry/SpanStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private matches(I)Z
    .locals 1

    .line 100
    iget v0, p0, Lio/sentry/SpanStatus;->minHttpStatusCode:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lio/sentry/SpanStatus;->maxHttpStatusCode:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SpanStatus;
    .locals 1

    .line 6
    const-class v0, Lio/sentry/SpanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SpanStatus;

    return-object p0
.end method

.method public static values()[Lio/sentry/SpanStatus;
    .locals 1

    .line 6
    sget-object v0, Lio/sentry/SpanStatus;->$VALUES:[Lio/sentry/SpanStatus;

    invoke-virtual {v0}, [Lio/sentry/SpanStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SpanStatus;

    return-object v0
.end method
