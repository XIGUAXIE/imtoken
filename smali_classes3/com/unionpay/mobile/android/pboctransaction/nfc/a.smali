.class public final Lcom/unionpay/mobile/android/pboctransaction/nfc/a;
.super Ljava/lang/Object;


# static fields
.field protected static final d:[B


# instance fields
.field protected a:Ljava/lang/String;

.field b:Lcom/unionpay/mobile/android/fully/a;

.field c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->d:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/unionpay/mobile/android/fully/a;Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnionPay Card"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->b:Lcom/unionpay/mobile/android/fully/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

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

.method private static a(Ljava/lang/String;)Ljava/util/List;
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

.method public static b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "F"

    const-string v1, "f"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "82"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "9F36"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "9F10"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "9F26"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "5F34"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "57"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "9F63"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {p0, v6, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "TD2"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v0, "AN1"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ED"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AMT"

    const-string v0, "9F02"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "9F27"

    const-string v0, "80"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->d:[B

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a([B)Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4F"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A000000333"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a([B)Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "noSupUnionpay"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "9F38"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;)Ljava/util/List;

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

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->c:Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p2

    array-length v0, p2

    add-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x58

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x7d

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->c([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "PBOC Transceive"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->b([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;-><init>([B)V

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->a()[B

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->c([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PBOC receive"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "9F10"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    and-int/lit8 p1, p1, 0x30

    int-to-byte p1, p1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
