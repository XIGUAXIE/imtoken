.class public Lcn/jiguang/ab/a;
.super Lcn/jiguang/l/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jiguang/ab/a$b;,
        Lcn/jiguang/ab/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcn/jiguang/ac/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/l/e;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/ab/a;->d:Ljava/lang/String;

    const-string p1, "JWake"

    iput-object p1, p0, Lcn/jiguang/ab/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Lcn/jiguang/ad/b;->b(Landroid/content/Context;)Lcn/jiguang/ac/a;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/jiguang/ad/c;->a(Lcn/jiguang/ac/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/jiguang/ac/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/jiguang/ac/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "content://"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wake] wakeTargets:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JWake"

    invoke-static {v4, v3}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcn/jiguang/l/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/l/b;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_18

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_f

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from_package"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcn/jiguang/ac/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start wake target:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_1

    const-string/jumbo v0, "wakeTarget is null, continue another wake"

    :goto_1
    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, v7, Lcn/jiguang/ac/c;->c:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command this app is not allow to wake package:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcn/jiguang/ac/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",service:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcn/jiguang/ac/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v9, Lcn/jiguang/ac/b;

    invoke-direct {v9}, Lcn/jiguang/ac/b;-><init>()V

    iget-object v0, v7, Lcn/jiguang/ac/c;->a:Ljava/lang/String;

    iput-object v0, v9, Lcn/jiguang/ac/b;->a:Ljava/lang/String;

    iget v0, v7, Lcn/jiguang/ac/c;->f:I

    const/4 v10, 0x1

    and-int/2addr v0, v10

    const-string/jumbo v11, "type"

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcn/jiguang/ac/c;->e:Landroid/content/Intent;

    if-eqz v0, :cond_6

    invoke-static/range {p0 .. p0}, Lcn/jiguang/ad/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v13, 0x8

    :try_start_0
    invoke-static {v3}, Lcn/jiguang/ad/c;->a(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v14, v7, Lcn/jiguang/ac/c;->e:Landroid/content/Intent;

    if-eqz v14, :cond_5

    const/high16 v15, 0x10000000

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "cn.jpush.android.service.DActivity"

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "JWake_dactivity"

    :goto_2
    invoke-static {v1, v0}, Lcn/jiguang/l/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "JWake_activity"

    goto :goto_2

    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "use ACTIVITY wake up ,start activity:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcn/jiguang/ac/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcn/jiguang/ac/c;->e:Landroid/content/Intent;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v14, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    :try_start_2
    const-string v0, "Fail to start activity ,activityIntent is null !!"

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v14, v0

    const/4 v0, 0x0

    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to start activity caused by:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v14, 0x0

    :goto_6
    iget-object v12, v9, Lcn/jiguang/ac/b;->b:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_7

    :goto_8
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, v7, Lcn/jiguang/ac/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_9

    iget v0, v7, Lcn/jiguang/ac/c;->c:I

    if-ge v0, v12, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x3

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    iget-object v12, v7, Lcn/jiguang/ac/c;->d:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    or-int/lit8 v0, v0, 0x4

    :cond_b
    move v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "use OLD wake up ,wake type is :"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x2

    if-nez v0, :cond_c

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_11

    :cond_c
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v7, Lcn/jiguang/ac/c;->a:Ljava/lang/String;

    iget-object v15, v7, Lcn/jiguang/ac/c;->b:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xc

    if-lt v13, v15, :cond_d

    const/16 v13, 0x20

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_d
    invoke-static {v3}, Lcn/jiguang/ad/c;->a(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v13, :cond_e

    invoke-virtual {v14, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_e
    if-eqz v0, :cond_f

    :try_start_3
    new-instance v0, Lcn/jiguang/ab/a$b;

    invoke-direct {v0, v1}, Lcn/jiguang/ab/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v14, v0, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bindService throwable:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b
    iget-object v13, v9, Lcn/jiguang/ac/b;->b:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_11

    :try_start_4
    invoke-virtual {v1, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startService throwable:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v0, 0x0

    :goto_c
    iget-object v8, v9, Lcn/jiguang/ac/b;->b:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_16

    :try_start_5
    iget-object v0, v7, Lcn/jiguang/ac/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v0, v7, Lcn/jiguang/ac/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    const-string v7, "4"

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcn/jiguang/ad/c;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    :cond_15
    :goto_d
    move v12, v10

    goto :goto_e

    :catchall_4
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContentResolver throwable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_e
    iget-object v0, v9, Lcn/jiguang/ac/b;->b:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wakeResult:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcn/jiguang/ac/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    return-object v5

    :cond_18
    :goto_f
    const-string/jumbo v0, "there are no wakeTarget"

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcn/jiguang/ab/a$a;

    invoke-direct {v0, p0}, Lcn/jiguang/ab/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcn/jiguang/l/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestConfig failed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JWake"

    invoke-static {v0, p0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/ac/a;)V
    .locals 2

    invoke-static {p0}, Lcn/jiguang/l/b;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcn/jiguang/ac/a;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcn/jiguang/ad/a;->a(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Lcn/jiguang/ac/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcn/jiguang/ac/a;->d:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcn/jiguang/ab/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/ab/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/l/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[doAction failed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JWake"

    invoke-static {p1, p0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->p:Ljava/util/List;

    const/4 v1, 0x1

    const-string v2, "JWake"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in black list"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->n:Ljava/lang/String;

    const-string v3, "exclude"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in excloude list"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->n:Ljava/lang/String;

    const-string v3, "include"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in include list"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lcn/jiguang/l/b;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcn/jiguang/ad/b;->b(Landroid/content/Context;)Lcn/jiguang/ac/a;

    move-result-object p0

    iget-boolean p0, p0, Lcn/jiguang/ac/a;->e:Z

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActionUserEnable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JWake"

    invoke-static {v1, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/l/b;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-boolean v1, v1, Lcn/jiguang/ac/a;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActionUserEnable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JWake"

    invoke-static {v2, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Landroid/content/Context;)Lcn/jiguang/ac/a;
    .locals 0

    invoke-static {p0}, Lcn/jiguang/ab/a;->d(Landroid/content/Context;)Lcn/jiguang/ac/a;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-wide v0, v0, Lcn/jiguang/ac/a;->l:J

    iget-object v2, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    const-string v3, "JWakeConfigHelper"

    invoke-static {v2, v3}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[refeshWakeConfig] currentTimeMillis:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",lastBusinessTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",wakeConfigInterval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JWake"

    invoke-static {v7, v6}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ab/a;->d(Landroid/content/Context;)Lcn/jiguang/ac/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    goto :goto_0

    :cond_0
    const-string v0, "need not get wake config"

    invoke-static {v7, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Lcn/jiguang/ac/a;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/ad/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/o/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/jiguang/ad/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/ad/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcn/jiguang/ac/a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestConfigNow] failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JWake"

    invoke-static {v0, p0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/jiguang/ac/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/ad/c;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-object v0, v0, Lcn/jiguang/ac/a;->k:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    iget-object v4, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    const-string v5, "JWake_account"

    invoke-static {v4, v5}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    const-string v7, "JWake_activity"

    invoke-static {v6, v7}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    const-string v9, "JWake_dactivity"

    invoke-static {v8, v9}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v12, v10, v4

    iget-object v14, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-wide v14, v14, Lcn/jiguang/ac/a;->q:J

    cmp-long v16, v12, v14

    sub-long v12, v10, v6

    iget-object v14, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-wide v14, v14, Lcn/jiguang/ac/a;->s:J

    move-object/from16 v16, v3

    cmp-long v17, v12, v14

    if-ltz v17, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    sub-long v13, v10, v8

    iget-object v15, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    move-wide/from16 v17, v4

    iget-wide v3, v15, Lcn/jiguang/ac/a;->r:J

    cmp-long v15, v13, v3

    if-gez v15, :cond_2

    iget-object v3, v1, Lcn/jiguang/ab/a;->d:Ljava/lang/String;

    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentTimeMillis:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",lastAccountTime:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v17

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",lastActivityTime:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",lastDActivityTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "JWake"

    invoke-static {v6, v4}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget v7, v7, Lcn/jiguang/ac/a;->f:I

    if-ge v0, v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Lcn/jiguang/ab/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/ac/d;

    const/4 v8, 0x0

    move-object/from16 v9, v16

    if-eqz v16, :cond_4

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/jiguang/ac/c;

    goto :goto_4

    :cond_4
    iget-boolean v10, v0, Lcn/jiguang/ac/d;->d:Z

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v10, v7}, Lcn/jiguang/ad/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/ac/c;

    move-result-object v10

    goto :goto_4

    :cond_5
    move-object v10, v8

    :goto_4
    if-nez v10, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found targetInfo"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v16, v9

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_c

    iget v11, v0, Lcn/jiguang/ac/d;->a:I

    iput v11, v10, Lcn/jiguang/ac/c;->f:I

    const-string v11, "not support acc"

    invoke-static {v6, v11}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v11, v10, Lcn/jiguang/ac/c;->f:I

    const/4 v13, 0x1

    and-int/2addr v11, v13

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcn/jiguang/ac/d;->f:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v3, :cond_7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v0, "cn.jpush.android.service.DActivity"

    invoke-virtual {v8, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v7, v8, v5}, Lcn/jiguang/ad/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    const-string v0, "not DActivity time"

    invoke-static {v6, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    if-eqz v12, :cond_9

    iget-object v0, v0, Lcn/jiguang/ac/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    iget-object v0, v1, Lcn/jiguang/ab/a;->a:Landroid/content/Context;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x1

    :try_start_2
    invoke-static {v0, v7, v8, v11}, Lcn/jiguang/ad/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)Z

    move-result v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    const/4 v11, 0x1

    const-string v0, "not custom Activity time"

    invoke-static {v6, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    iput-object v8, v10, Lcn/jiguang/ac/c;->e:Landroid/content/Intent;

    goto :goto_a

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "do not use Activity wake , activityEnable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  intent="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    :goto_8
    const/4 v11, 0x1

    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse package:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " activity intent error:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/y/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_d
    move-object/from16 v9, v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget v3, v3, Lcn/jiguang/ac/a;->f:I

    if-ge v0, v3, :cond_11

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-static {v0, v3}, Lcn/jiguang/ad/c;->a(Lcn/jiguang/ac/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v1, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget v4, v4, Lcn/jiguang/ac/a;->f:I

    if-ge v3, v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/ac/c;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "JWake"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wake with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/ab/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/l/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "can\'t wake because not registered yet"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/ad/b;->b(Landroid/content/Context;)Lcn/jiguang/ac/a;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-direct {p0}, Lcn/jiguang/ab/a;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-static {v1, v2}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Lcn/jiguang/ac/a;)V

    invoke-direct {p0}, Lcn/jiguang/ab/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "wake is disabled by user"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-boolean v1, v1, Lcn/jiguang/ac/a;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-boolean v1, v1, Lcn/jiguang/ac/a;->c:Z

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-boolean v1, v1, Lcn/jiguang/ac/a;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/jiguang/ab/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcn/jiguang/ab/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-static {v2, v3, v1}, Lcn/jiguang/ad/c;->a(Landroid/content/Context;Lcn/jiguang/ac/a;Ljava/util/List;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-boolean v1, v1, Lcn/jiguang/ac/a;->h:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "time disabled"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    iget-wide v3, v3, Lcn/jiguang/ac/a;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[wakeUp]currentTimeMillis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",lastBusinessTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",wakeInterval:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-ltz v1, :cond_5

    invoke-direct {p0}, Lcn/jiguang/ab/a;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/ab/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/ab/a;->c:Lcn/jiguang/ac/a;

    invoke-static {v2, v3, v1}, Lcn/jiguang/ad/c;->a(Landroid/content/Context;Lcn/jiguang/ac/a;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    const-string v1, "need not wake up"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    const-string/jumbo v1, "wake is disabled by server"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wake failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
