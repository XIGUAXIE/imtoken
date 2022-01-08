.class public Lcmb/pb/cmbsafe/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/inputmethodservice/Keyboard;)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-lt v3, v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-lt v1, v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v7, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v2

    if-lt v7, v5, :cond_1

    if-gt v7, v4, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v7, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v8, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v8, v2

    aput v8, v7, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v8, v8, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v8, v7, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v3, v7, :cond_2

    :goto_3
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v8, v8, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v8, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v9, v9, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v10, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v11, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v11, v11, v2

    aput v11, v10, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v11, v11, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v11, v10, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v10, v10, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aput v8, v10, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v9, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v6, v6, v2

    if-lt v6, v5, :cond_5

    if-gt v6, v4, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
