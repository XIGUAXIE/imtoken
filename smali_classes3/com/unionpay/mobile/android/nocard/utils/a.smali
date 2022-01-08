.class public final Lcom/unionpay/mobile/android/nocard/utils/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "paydata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "uppay"

    const-string v1, "decodePayInfo +++ \n"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url deocode result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/a;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "order info:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "decodePayInfo --- \n"

    invoke-static {v0, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static a(Landroid/content/Intent;Lcom/unionpay/mobile/android/model/b;)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ===>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uppay"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/16 v3, 0x3e8

    if-eqz p0, :cond_1

    const-string v4, "reqOriginalId"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " bundle===>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/unionpay/mobile/android/plugin/c;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reqID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v5, v5, Lcom/unionpay/mobile/android/plugin/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v5, "invokedbyplugin"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/unionpay/mobile/android/plugin/c;->e:Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput v3, v4, Lcom/unionpay/mobile/android/plugin/c;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nativeBrowser data:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v4, -0xca7427

    const v5, -0xa35c26

    if-eqz p0, :cond_4

    const-string v6, "dlgstyle"

    invoke-virtual {p0, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p1, Lcom/unionpay/mobile/android/model/b;->aM:Z

    const-string v6, "url_index"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "[^0-9]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/unionpay/mobile/android/model/b;->aO:I

    :cond_2
    const-string v6, "server"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iput-object v6, p1, Lcom/unionpay/mobile/android/model/b;->bk:Ljava/lang/String;

    :cond_3
    const-string v6, "navbargb"

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/unionpay/mobile/android/global/a;->M:I

    const-string v5, "divlinecolor"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_4
    iput-boolean v0, p1, Lcom/unionpay/mobile/android/model/b;->aM:Z

    sput v5, Lcom/unionpay/mobile/android/global/a;->M:I

    :goto_1
    sput v4, Lcom/unionpay/mobile/android/global/a;->N:I

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v4, v4, Lcom/unionpay/mobile/android/plugin/c;->a:I

    const-string v5, ""

    const-string v6, "appID"

    const-string v7, "mServerIdentifier = "

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "ex_mode"

    const/4 v12, 0x1

    if-eqz v4, :cond_b

    if-eq v4, v12, :cond_a

    if-eq v4, v10, :cond_b

    if-eq v4, v9, :cond_9

    const/4 v13, 0x4

    if-eq v4, v13, :cond_8

    if-eq v4, v8, :cond_6

    if-eq v4, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z

    move-result v0

    goto/16 :goto_6

    :cond_6
    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    iput-object v5, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    :cond_7
    const-string v1, "amt"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/unionpay/mobile/android/model/b;->e:Ljava/lang/String;

    const-string v1, "aid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/unionpay/mobile/android/model/b;->d:Ljava/lang/String;

    iput-boolean v12, p1, Lcom/unionpay/mobile/android/model/b;->f:Z

    iput-boolean v12, p1, Lcom/unionpay/mobile/android/model/b;->c:Z

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_2

    :cond_8
    const-string v0, "paydata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " paydata="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginEx"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/a;->b(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z

    move-result p0

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v2, "tencentUID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unionpay/mobile/android/plugin/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v2, "tencentWID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unionpay/mobile/android/plugin/c;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    if-eqz p0, :cond_12

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_12

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object p0, p0, Lcom/unionpay/mobile/android/plugin/c;->h:Ljava/lang/String;

    if-eqz p0, :cond_12

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object p0, p0, Lcom/unionpay/mobile/android/plugin/c;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_12

    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_a
    const-string v0, "uppayuri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v3, "resultIntentAction"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, " result Action="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z

    move-result p0

    :goto_3
    move v0, p0

    goto/16 :goto_6

    :cond_b
    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput-object v1, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    if-nez v1, :cond_d

    iput-object v5, p1, Lcom/unionpay/mobile/android/model/b;->g:Ljava/lang/String;

    :cond_d
    const-string v1, "source"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v3, "samsung_out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    :cond_e
    const-string v1, "frontNotifyByPlugin"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p1, Lcom/unionpay/mobile/android/model/b;->U:Z

    iget-boolean v1, p1, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tn from bundle:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p1, Lcom/unionpay/mobile/android/model/b;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dw.isNewTypeTn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/unionpay/mobile/android/model/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_11
    const-string v1, "ResultURL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "result URL:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_6
    iget-boolean p0, p1, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz p0, :cond_13

    sget-boolean p0, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez p0, :cond_13

    const/4 p0, -0x1

    sput p0, Lcom/unionpay/mobile/android/global/b;->b:I

    const p0, -0x265bda

    sput p0, Lcom/unionpay/mobile/android/global/b;->c:I

    const/16 p0, -0x1a59

    sput p0, Lcom/unionpay/mobile/android/global/b;->d:I

    :cond_13
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget p0, p0, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-eq p0, v10, :cond_14

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget p0, p0, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-eq p0, v8, :cond_14

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget p0, p0, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-ne p0, v9, :cond_15

    :cond_14
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput-boolean v12, p0, Lcom/unionpay/mobile/android/plugin/c;->d:Z

    :cond_15
    iget-boolean p0, p1, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz p0, :cond_16

    const-string p0, "1.9"

    goto :goto_7

    :cond_16
    const-string p0, "1.4"

    :goto_7
    iput-object p0, p1, Lcom/unionpay/mobile/android/model/b;->a:Ljava/lang/String;

    :cond_17
    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string v1, "\\?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    const-string v3, "uppay"

    if-ge v1, v2, :cond_0

    const-string p0, "uppay protocol params error!"

    invoke-static {v3, p0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    aget-object p0, p0, v1

    const-string v4, "parseUPPayURIParams() +++ "

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_3

    aget-object v8, p0, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-lt v9, v2, :cond_2

    aget-object v9, v8, v0

    const-string v10, "style"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v5, v8, v1

    goto :goto_1

    :cond_1
    aget-object v9, v8, v0

    const-string v10, "paydata"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v6, v8, v1

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    const-string p0, "token"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v6, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "paydata="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/a;->b(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z

    move-result p0

    move v0, p0

    :cond_4
    const-string p0, "parseUPPayURIParams() ---"

    invoke-static {v3, p0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return v0
.end method

.method private static b(Ljava/lang/String;Lcom/unionpay/mobile/android/model/b;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v2, "00"

    iput-object v2, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_6

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usetestmode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v4, "01"

    :goto_1
    iput-object v4, v3, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "test"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v4, "02"

    goto :goto_1

    :cond_3
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v4, "98"

    goto :goto_1

    :cond_4
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ResultURL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_0
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    :goto_3
    return v0
.end method
