.class public final Lcom/unionpay/mobile/android/pboctransaction/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static l:Ljava/sql/Date;

.field private static m:Ljava/lang/String;

.field private static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Lcom/unionpay/mobile/android/pboctransaction/d;


# instance fields
.field c:Lcom/unionpay/mobile/android/pboctransaction/c;

.field d:Lcom/unionpay/mobile/android/fully/a;

.field public e:Z

.field private f:Ljava/lang/String;

.field private g:B

.field private h:B

.field private i:B

.field private j:Z

.field private k:Z

.field private n:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "A0000003330101010000000000010000"

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->a:Ljava/lang/String;

    const-string v0, "A0000003330101020001050001000000"

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->s:Lcom/unionpay/mobile/android/pboctransaction/d;

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/c;Lcom/unionpay/mobile/android/fully/a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.4"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->j:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->n:Ljava/lang/String;

    const-string v1, "A0000003334355502D4D4F42494C45"

    iput-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->p:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->q:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_e

    aget-byte v3, p0, v2

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    new-array v4, v3, [B

    invoke-static {p0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x4

    const/16 v8, -0x80

    const/4 v9, 0x3

    if-nez v4, :cond_6

    add-int/2addr v2, v3

    aget-byte p1, p0, v2

    and-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    if-eq p1, v8, :cond_2

    aget-byte p1, p0, v2

    :goto_2
    and-int/lit16 p1, p1, 0xff

    goto :goto_4

    :cond_2
    aget-byte p1, p0, v2

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr v6, p1

    if-ne v6, v5, :cond_3

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    goto :goto_2

    :cond_3
    if-ne v6, v9, :cond_4

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    :goto_3
    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    goto :goto_4

    :cond_4
    if-ne v6, v7, :cond_5

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, p0, v0

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_4
    new-array v0, p1, [B

    add-int/2addr v2, v6

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    aget-byte v4, p0, v2

    const/16 v10, 0x20

    and-int/2addr v4, v10

    add-int/2addr v2, v3

    array-length v3, p0

    if-ne v4, v10, :cond_8

    if-ge v2, v3, :cond_7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v3, v8, :cond_7

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v6, v3

    :cond_7
    :goto_5
    add-int/2addr v2, v6

    goto/16 :goto_0

    :cond_8
    if-ge v2, v3, :cond_9

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-nez v3, :cond_9

    aget-byte v3, p0, v2

    :goto_6
    and-int/lit16 v3, v3, 0xff

    goto :goto_8

    :cond_9
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v6

    move v6, v3

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    if-ne v6, v5, :cond_b

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_b

    aget-byte v3, p0, v3

    goto :goto_6

    :cond_b
    if-ne v6, v9, :cond_c

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    goto :goto_8

    :cond_c
    if-ne v6, v7, :cond_d

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_d

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v6, v3

    goto :goto_5

    :cond_e
    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    if-nez p1, :cond_2

    rem-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_1

    rsub-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p0

    goto :goto_1

    :cond_1
    move p1, p0

    :goto_1
    new-array v1, p1, [B

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p0, 0x1

    rem-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    :cond_3
    new-array v1, p1, [B

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, -0x80

    aput-byte v0, v1, p0

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private a([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iget-byte v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v1, p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, v1, v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/4 v2, 0x5

    new-array v2, v2, [B

    iget-byte v5, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    aput-byte v5, v2, v0

    const/16 v6, -0x40

    aput-byte v6, v2, v3

    aput-byte v0, v2, v4

    const/4 v6, 0x3

    aput-byte v0, v2, v6

    const/4 v6, 0x4

    aput-byte v1, v2, v6

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v1, v2, v5}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-lt v2, v4, :cond_4

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, v1, v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_4

    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    aput-byte v1, p1, v5

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iget-byte v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    invoke-interface {v1, p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v0, v1

    :cond_3
    move v2, v0

    :cond_4
    const/16 p1, -0x70

    if-le v2, v4, :cond_5

    add-int/lit8 v0, v2, -0x2

    aget-byte v5, v1, v0

    if-ne v5, p1, :cond_5

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, v1, v5

    if-nez v5, :cond_5

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v2, -0x2

    aget-byte v0, v1, v0

    if-ne v0, p1, :cond_6

    sub-int/2addr v2, v3

    aget-byte p1, v1, v2

    if-nez p1, :cond_6

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    instance-of v1, v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00a40400"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private b([B)V
    .locals 5

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, -0x1

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    int-to-byte v2, v0

    const/4 v3, 0x4

    aput-byte v2, p1, v3

    add-int/lit8 v2, v0, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x5

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-eqz p1, :cond_5

    const-string v0, "9000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "uppay"

    const-string v1, "test for gongshang version 2"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "9F38"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, -0x7d

    const/4 v3, 0x2

    const/16 v4, -0x58

    const/16 v5, -0x80

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v8, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v4, p1

    add-int/2addr v4, v3

    int-to-byte v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "80A800000b8309"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "9F7A019F02065F2A02"

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    const-string v0, "80"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "82"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "5A"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "5F34"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "9F1F"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "57"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "5F24"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "9F10"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "8C"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "8D"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    array-length v7, v0

    if-ge v6, v7, :cond_4

    const/4 v7, 0x5

    new-array v7, v7, [B

    aput-byte v3, v7, v3

    const/16 v8, -0x4e

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    const/4 v8, 0x2

    aput-byte v3, v7, v8

    const/4 v10, 0x3

    aput-byte v3, v7, v10

    aput-byte v3, v7, v2

    new-array v11, v2, [B

    invoke-static {v0, v6, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x4

    aget-byte v9, v11, v9

    :goto_1
    aget-byte v12, v11, v8

    if-gt v9, v12, :cond_3

    aput-byte v3, v7, v2

    aget-byte v12, v11, v3

    and-int/lit8 v12, v12, -0x8

    or-int/2addr v12, v2

    int-to-byte v12, v12

    aput-byte v12, v7, v10

    aput-byte v9, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    move-object/from16 v12, p0

    :try_start_1
    invoke-direct {v12, v7}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v13, v15}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v8, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v8, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x4

    const/4 v8, 0x2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v12, p0

    goto :goto_0

    :cond_4
    move-object/from16 v12, p0

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 7

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v1, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "%08d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v4, ""

    const-string v5, "9F26"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "9F27"

    const-string v6, "80"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "9F10"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "9F37"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "9F36"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "95"

    const-string v5, "0000000800"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "9A"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9C"

    const-string v3, "45"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "000000000000"

    const-string v3, "9F02"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "0156"

    const-string v5, "5F2A"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "82"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "9F1A"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "9F03"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F33"

    const-string v3, "A04000"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F34"

    const-string v3, "420300"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F35"

    const-string v3, "34"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F1E"

    const-string v3, "3030303030303030"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "84"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F09"

    const-string v3, "0001"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F74"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F63"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F7A"

    const-string v3, "01"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9F21"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F4E"

    const-string v2, "0000000000000000000000000000000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "DF31"

    const-string v2, "0100000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F66"

    const-string v2, "36800000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "DF60"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "80AE800034"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "9F27"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "9F36"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const/16 v2, 0x1a

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "9F26"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9F10"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method private e()Z
    .locals 6

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "AN1"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "00000001"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "TID"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F02"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "AMT"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "156"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "CUR"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "57"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "F"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "TD2"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F24"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_9

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "ED"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    :goto_2
    return v4

    :cond_9
    :goto_3
    return v2

    :cond_a
    :goto_4
    return v4

    :cond_b
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    :goto_6
    return v4
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "CSN"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x50t
        -0x7et
        0x0t
        0xat
    .end array-data
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object p1

    :array_0
    .array-data 1
        -0x80t
        0x1at
        0x13t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static g()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x10

    if-ge v5, v3, :cond_0

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object p1

    :array_0
    .array-data 1
        -0x80t
        0x1at
        0x14t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x1c0

    if-le v1, v4, :cond_0

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    aput-byte v2, v0, v3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encryptMac in resp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAC"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    nop

    :array_0
    .array-data 1
        -0x80t
        0x1at
        0x15t
        0x1t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x6t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static i(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-byte v3, p0, v2

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    new-array v4, v3, [B

    invoke-static {p0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_2

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v5, v3

    :cond_2
    add-int/2addr v2, v5

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "uppay"

    const-string v1, "startUPCardPurchase() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v2}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ************T1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->decPrefData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/pboctransaction/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p2, "uppay"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, " ************T2="

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 p2, 0x28

    const/16 p4, 0x3c

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x64

    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const/16 v3, 0xd0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd8

    const/16 v4, 0xe8

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "v"

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cmd"

    const-string v5, "pay"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "params"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pay_type"

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pay_mode"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "bind"

    const-string v6, "no"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "carrier_tp"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "track2_data"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "track3_data"

    invoke-virtual {v4, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "csn"

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "CSN"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "submit_time"

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v4, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "sp_id"

    const-string v2, "8889"

    invoke-virtual {v4, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "pin"

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "PIN"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "pan"

    invoke-virtual {v4, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "dynamic_key_data"

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "carrier_app_tp"

    const-string p2, "1"

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "pan"

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pin"

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v4, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string p1, "uppay"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " ************T3="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    invoke-interface {p1, v1}, Lcom/unionpay/mobile/android/fully/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_resp_message"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_6
    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :goto_4
    :try_start_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_8
    :goto_5
    :try_start_6
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    const-string v0, "uppay"

    const-string v1, "startPBOCPurchase() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "9F02"

    const-string v1, "trans_amt"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "9F1A"

    const-string v1, "0156"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "5F2A"

    const-string v1, "trans currcy code"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "9C"

    const-string v1, "trans_type"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A000000333"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->g()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->g()Landroid/os/Bundle;

    move-result-object p2

    new-instance p4, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p4, v0, v1}, Ljava/sql/Date;-><init>(J)V

    sput-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    new-instance p4, Ljava/lang/String;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->n:Ljava/lang/String;

    const-string p4, "uppay"

    const-string v0, "selectUPCard"

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectUPCard return: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p4, "uppay"

    const-string v0, "selectPBOC"

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectPBOC return: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string p4, "uppay"

    const-string v0, "GPO"

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gpo return: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string p4, "uppay"

    const-string v0, "CDOL1"

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CDOL1 return: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    const-string p4, "uppay"

    const-string v0, "GAC1"

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GAC1 return: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "uppay"

    const-string p4, "csn"

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f()Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "csn return: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_c

    :cond_6
    const-string p1, "action_resp_code"

    const-string p4, "10019"

    :goto_0
    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_1
    const-string p1, "action_resp_code"

    const-string p4, "10019"

    goto :goto_0

    :cond_8
    :goto_2
    const-string p1, "action_resp_code"

    const-string p4, "10019"

    goto :goto_0

    :cond_9
    :goto_3
    const-string p1, "action_resp_code"

    const-string p4, "10020"

    goto :goto_0

    :cond_a
    :goto_4
    const-string p1, "action_resp_code"

    const-string p4, "10019"

    goto :goto_0

    :cond_b
    :goto_5
    const-string p1, "action_resp_code"

    const-string p4, "10019"

    goto :goto_0

    :cond_c
    :goto_6
    const-string p1, "action_resp_code"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "0000"

    if-eq p1, p4, :cond_d

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_d
    :try_start_2
    const-string p1, "uppay"

    const-string p4, "encryptPIN"

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "PIN"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p6}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->decPrefData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "encryptPIN return:"

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_c

    :cond_e
    const-string p1, "uppay"

    const-string p4, "encryptData"

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e()Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "uppay"

    const-string p3, "encryptData false"

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_f
    :try_start_3
    const-string p1, "uppay"

    const-string p4, "initDCData"

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "9F26"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F27"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F10"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F37"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F36"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "95"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9A"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9C"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F02"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "5F2A"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "82"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F1A"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F03"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F33"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F34"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F35"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string p4, "9F1E"

    invoke-static {p4, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "DCD"

    invoke-virtual {p4, p6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "TID"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "AMT"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "CUR"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "AN1"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "CSN"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p4, "5F34"

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    goto/16 :goto_b

    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "TID"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_11

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "TID"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "AMT"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_12

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "AMT"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "CUR"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_13

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "CUR"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "AN1"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_14

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "AN1"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "AN1"

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "CSN"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_15

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "CSN"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-boolean p4, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->q:Z

    if-eqz p4, :cond_16

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "ED"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_16

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "ED"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "5F34"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_17

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "5F34"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "DCD"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_18

    sget-object p4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "DCD"

    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string p4, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    if-eqz p6, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_7

    :cond_1a
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    const-string p6, "encryptMac"

    invoke-static {p4, p6}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "uppay"

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "encryptMac result"

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_1b

    goto/16 :goto_a

    :cond_1b
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "v"

    iget-object p6, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    invoke-virtual {p1, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "cmd"

    const-string p6, "pay"

    invoke-virtual {p1, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p6, "params"

    invoke-virtual {p1, p6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "pay_type"

    const-string v0, "2"

    invoke-virtual {p4, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "pay_mode"

    const-string v0, "1"

    invoke-virtual {p4, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "bind"

    const-string v0, "no"

    invoke-virtual {p4, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "carrier_tp"

    invoke-virtual {p4, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "icc_data"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "DCD"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "csn"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "CSN"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "card_seq_id"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "5F34"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    if-eqz p6, :cond_1c

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "5F34"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    goto :goto_8

    :cond_1c
    const-string p6, ""

    :goto_8
    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "submit_time"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "sp_id"

    const-string p6, "8889"

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "pin"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "PIN"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "pan"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "AN1"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "carrier_app_tp"

    const-string p6, "2"

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "ED"

    invoke-virtual {p3, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1d

    const-string p3, "expire"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "ED"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    sget-object p3, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string p6, "TD2"

    invoke-virtual {p3, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1e

    const-string p3, "track2_data"

    sget-object p6, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "TD2"

    invoke-virtual {p6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1e
    if-eqz p5, :cond_1f

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_1f

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-lez p3, :cond_1f

    const-string p3, "pan"

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pin"

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    :cond_1f
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string p3, "uppay"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    invoke-interface {p3, p1}, Lcom/unionpay/mobile/android/fully/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "action_resp_message"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_0
    :try_start_6
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_20
    :goto_a
    :try_start_7
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_21
    :goto_b
    :try_start_8
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_22
    :goto_c
    :try_start_9
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string p1, "action_resp_code"

    const-string p3, "10019"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    instance-of v1, v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    if-eqz v1, :cond_0

    const-string v1, "A0000003334355502D4D4F42494C45"

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xft
        -0x60t
        0x0t
        0x0t
        0x3t
        0x33t
        0x43t
        0x55t
        0x50t
        0x2dt
        0x4dt
        0x4ft
        0x42t
        0x49t
        0x4ct
        0x45t
    .end array-data
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "80F802"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "08"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "80"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "5A"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    const-string v0, "84"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/c;->a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const-string v0, "80F2000102"

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
