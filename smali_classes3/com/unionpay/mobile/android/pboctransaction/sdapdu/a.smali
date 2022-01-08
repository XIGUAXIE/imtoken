.class public final Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# instance fields
.field a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    return-void
.end method

.method private static b(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "uppay"

    if-nez v0, :cond_0

    const-string v0, " select UPCard failed!!!!"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, " getBankCardFileEntry failed!!!!"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v4, v0

    const/high16 v0, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    :goto_1
    const/16 v9, 0xa

    if-ge v6, v9, :cond_3

    and-int v9, v8, v4

    if-nez v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    ushr-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-gtz v7, :cond_4

    return-object v1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    :goto_2
    if-gt v6, v7, :cond_7

    const/16 v0, 0xb

    if-ge v6, v0, :cond_7

    and-int v0, v4, v5

    if-nez v0, :cond_5

    invoke-static {}, Lcom/unionpay/mobile/android/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p0

    invoke-virtual {v8, v6, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v10, 0x28

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {v11}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "gbk"

    invoke-direct {v0, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v15, v11

    :goto_3
    const/16 v0, 0x3c

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/unionpay/mobile/android/model/a;

    const/16 v13, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    move-object v12, v9

    invoke-direct/range {v12 .. v17}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "----"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-object/from16 v8, p0

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const-string v0, "uppay"

    const-string v1, "SDEngine.readList() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "A0000003330101"

    new-instance v3, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;

    const-string v4, "1.0"

    invoke-direct {v3, v9, v4}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lcom/unionpay/mobile/android/model/a;

    const/16 v4, 0x8

    invoke-static {v10}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const-string v6, ""

    move-object v3, v11

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string p1, "SDEngine.readList() ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    :cond_0
    return-void
.end method

.method public final a([BI)[B
    .locals 0

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 5

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/b;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/b;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->c:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/sdapdu/NativeSDWriter;->a()Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
