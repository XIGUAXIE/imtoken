.class public Lorg/apache/commons/digester/ExtendedBaseRules;
.super Lorg/apache/commons/digester/RulesBase;
.source "ExtendedBaseRules.java"


# instance fields
.field private counter:I

.field private order:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/digester/Rule;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lorg/apache/commons/digester/RulesBase;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->counter:I

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->order:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/digester/ExtendedBaseRules;)Ljava/util/Map;
    .locals 0

    .line 170
    iget-object p0, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->order:Ljava/util/Map;

    return-object p0
.end method

.method private basicMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private findExactAncesterMatch(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const/16 v0, 0x2f

    .line 474
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    iget-object v1, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parentMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 1

    .line 202
    invoke-super {p0, p1, p2}, Lorg/apache/commons/digester/RulesBase;->add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 203
    iget p1, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->counter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->counter:I

    .line 204
    iget-object v0, p0, Lorg/apache/commons/digester/ExtendedBaseRules;->order:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x2f

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    const-string v4, ""

    const/4 v8, 0x0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    .line 237
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    iget v10, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->counter:I

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    iget-object v10, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    const-string v11, "!*"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_1

    .line 243
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_1
    iget-object v10, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/?"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_2

    .line 250
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_2
    iget-object v10, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_3

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_5

    .line 272
    iget-object v8, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_4

    goto :goto_1

    .line 281
    :cond_4
    invoke-direct {v0, v2}, Lorg/apache/commons/digester/ExtendedBaseRules;->findExactAncesterMatch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 300
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 304
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 307
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_6
    const-string v3, "*/"

    .line 312
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "/*"

    .line 313
    invoke-virtual {v15, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v3, :cond_8

    if-eqz v16, :cond_7

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v20, v4

    const/16 v5, 0x2f

    goto/16 :goto_b

    .line 320
    :cond_8
    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 323
    invoke-direct {v0, v15, v2, v4}, Lorg/apache/commons/digester/ExtendedBaseRules;->parentMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v20, v4

    move/from16 v17, v19

    const/4 v4, 0x0

    const/16 v5, 0x2f

    goto/16 :goto_8

    :cond_9
    if-eqz v6, :cond_10

    const/4 v7, 0x2

    if-eqz v3, :cond_c

    .line 328
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v5, v20, -0x2

    invoke-virtual {v15, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v5, 0x1

    const/4 v7, -0x1

    goto :goto_5

    .line 332
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-le v5, v7, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v20, v4

    move v7, v5

    const/4 v4, 0x0

    const/16 v5, 0x2f

    goto :goto_7

    .line 335
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v7, v20, -0x2

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 338
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v20, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v5, v4, :cond_d

    const/4 v4, 0x1

    const/16 v5, 0x2f

    goto :goto_6

    .line 342
    :cond_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v20, v4

    const/16 v5, 0x2f

    :cond_f
    const/4 v4, 0x0

    :goto_6
    move v7, v4

    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    move-object/from16 v20, v4

    const/16 v5, 0x2f

    .line 350
    invoke-direct {v0, v15, v2}, Lorg/apache/commons/digester/ExtendedBaseRules;->basicMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    :goto_7
    const/16 v17, 0x0

    :goto_8
    if-nez v17, :cond_11

    if-nez v4, :cond_11

    if-eqz v7, :cond_16

    :cond_11
    if-eqz v16, :cond_12

    .line 357
    iget-object v3, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_16

    .line 359
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_12
    if-nez v8, :cond_16

    .line 370
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v3, :cond_13

    add-int/lit8 v4, v4, -0x1

    :cond_13
    if-eqz v6, :cond_14

    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_14
    if-eqz v18, :cond_15

    goto :goto_9

    :cond_15
    :goto_a
    if-le v4, v14, :cond_16

    .line 381
    iget-object v3, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v10, v3

    move v14, v4

    :cond_16
    :goto_b
    move-object/from16 v4, v20

    const/16 v3, 0x2f

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_17
    if-nez v10, :cond_18

    .line 395
    iget-object v2, v0, Lorg/apache/commons/digester/ExtendedBaseRules;->cache:Ljava/util/HashMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    :cond_18
    if-eqz v10, :cond_19

    .line 400
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_19
    if-eqz v1, :cond_1b

    .line 407
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    :cond_1a
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/Rule;

    .line 410
    invoke-virtual {v3}, Lorg/apache/commons/digester/Rule;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 412
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 420
    :cond_1b
    new-instance v1, Lorg/apache/commons/digester/ExtendedBaseRules$1;

    invoke-direct {v1, v0}, Lorg/apache/commons/digester/ExtendedBaseRules$1;-><init>(Lorg/apache/commons/digester/ExtendedBaseRules;)V

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v9
.end method
