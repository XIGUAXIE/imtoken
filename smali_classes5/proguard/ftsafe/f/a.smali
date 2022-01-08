.class public Lproguard/ftsafe/f/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lproguard/ftsafe/f/a;->c:Z

    sput-boolean v0, Lproguard/ftsafe/f/a;->a:Z

    sput v0, Lproguard/ftsafe/f/a;->d:I

    sput v0, Lproguard/ftsafe/f/a;->e:I

    return-void
.end method

.method public static a()[B
    .locals 7

    sget v0, Lproguard/ftsafe/f/a;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_3

    new-array v0, v0, [B

    :try_start_0
    sget-object v2, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    sget-object v2, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v6, v5

    invoke-static {v5, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    sget v2, Lproguard/ftsafe/f/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static a([BI)[B
    .locals 5

    add-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/16 v1, -0x7d

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/StrUtil;->IntToByteArray2(I)[B

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v1, v3, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x3

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p0

    invoke-static {p0, v1}, Lproguard/ftsafe/f/a;->a([BI)[B

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    array-length p0, v1

    if-ge p0, p1, :cond_0

    array-length p0, v1

    new-array p0, p0, [B

    array-length v2, v1

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array p0, p1, [B

    invoke-static {v1, v3, p0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    array-length p0, p0

    add-int/lit8 p0, p0, 0x3

    new-array p0, p0, [B

    array-length v2, v1

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int p0, v3, p1

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    sub-int/2addr v4, p0

    if-lez v4, :cond_2

    array-length v4, v1

    sub-int/2addr v4, p0

    const/4 v5, 0x1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    new-array v6, v6, [B

    aput-byte v2, v6, v3

    invoke-static {v1, p0, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p0, v4

    add-int/2addr v2, v5

    int-to-byte v2, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lproguard/ftsafe/f/a;->c:Z

    sput-boolean v0, Lproguard/ftsafe/f/a;->a:Z

    sput v0, Lproguard/ftsafe/f/a;->d:I

    sput v0, Lproguard/ftsafe/f/a;->e:I

    sget-object v0, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static c([BI)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, -0x7d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    sub-int/2addr p1, v1

    new-array v2, p1, [B

    sget-object v4, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sput-boolean v3, Lproguard/ftsafe/f/a;->c:Z

    invoke-static {p0, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    const/4 v1, 0x2

    invoke-static {p0, v3, p1, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/StrUtil;->ByteArrayToInt2([B)I

    move-result p0

    sput p0, Lproguard/ftsafe/f/a;->d:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v3

    new-array v2, p1, [B

    invoke-static {p0, v3, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    sget-boolean p0, Lproguard/ftsafe/f/a;->c:Z

    if-eqz p0, :cond_3

    sget-object p0, Lproguard/ftsafe/f/a;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lproguard/ftsafe/f/a;->e:I

    array-length p1, v2

    add-int/2addr p0, p1

    sput p0, Lproguard/ftsafe/f/a;->e:I

    sget p1, Lproguard/ftsafe/f/a;->d:I

    if-ne p0, p1, :cond_2

    sput-boolean v0, Lproguard/ftsafe/f/a;->c:Z

    sput-boolean v3, Lproguard/ftsafe/f/a;->a:Z

    :cond_2
    return v3

    :cond_3
    return v0
.end method
