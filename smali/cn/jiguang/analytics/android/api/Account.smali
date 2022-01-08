.class public Lcn/jiguang/analytics/android/api/Account;
.super Ljava/lang/Object;


# static fields
.field private static final BIRTHDATE:Ljava/lang/String; = "$birthdate"

.field private static final BUILT_IN_SUFFIX:Ljava/lang/String; = "$"

.field private static final CREATION_TIME:Ljava/lang/String; = "$creation_time"

.field private static final EMAIL:Ljava/lang/String; = "$email"

.field private static final JSON_KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final JSON_KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final JSON_KEY_REMOVE:Ljava/lang/String; = "remove_attr"

.field private static final JSON_KEY_SET:Ljava/lang/String; = "set_attr"

.field private static final NAME:Ljava/lang/String; = "$name"

.field private static final PAID:Ljava/lang/String; = "$paid"

.field private static final PHONE:Ljava/lang/String; = "$phone"

.field private static final QQ_ID:Ljava/lang/String; = "$qq_id"

.field private static final SEX:Ljava/lang/String; = "$sex"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final WECHAT_ID:Ljava/lang/String; = "$wechat_id"

.field private static final WEIBO_ID:Ljava/lang/String; = "$weibo_id"

.field private static final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/jiguang/analytics/android/e/d/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountId:Ljava/lang/String;

.field private extraAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private invalidKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeAttr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private setAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    new-instance v0, Lcn/jiguang/analytics/android/e/d/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/jiguang/analytics/android/e/d/g;-><init>(II)V

    sget-object v1, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    const-string v2, "$sex"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    const-string v2, "$paid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    new-instance v1, Lcn/jiguang/analytics/android/e/d/e;

    invoke-direct {v1}, Lcn/jiguang/analytics/android/e/d/e;-><init>()V

    const-string v2, "$birthdate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    new-instance v1, Lcn/jiguang/analytics/android/e/d/h;

    invoke-direct {v1}, Lcn/jiguang/analytics/android/e/d/h;-><init>()V

    const-string v2, "$phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    new-instance v1, Lcn/jiguang/analytics/android/e/d/f;

    invoke-direct {v1}, Lcn/jiguang/analytics/android/e/d/f;-><init>()V

    const-string v2, "$email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->setAttr:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->extraAttr:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->invalidKeys:Ljava/util/Set;

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/Account;->accountId:Ljava/lang/String;

    return-void
.end method

.method private setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->setAttr:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->setAttr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "Account"

    const-string p2, "key should be start with$"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillJson(Lorg/json/JSONObject;)Lcn/jiguang/analytics/android/e/d/b;
    .locals 8

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    new-instance p1, Lcn/jiguang/analytics/android/e/d/b;

    const/16 v0, 0x3ec

    const-string v1, "account_id should be no more than 255 characters"

    invoke-direct {p1, v0, v1}, Lcn/jiguang/analytics/android/e/d/b;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/Account;->setAttr:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " | the value of "

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v5, Lcn/jiguang/analytics/android/api/Account;->rules:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/analytics/android/e/d/d;

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    invoke-virtual {v5, v6}, Lcn/jiguang/analytics/android/e/d/d;->a(Ljava/io/Serializable;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/e/d/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcn/jiguang/analytics/android/api/Account;->extraAttr:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_5

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " should be String or Number"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcn/jiguang/analytics/android/api/Account;->invalidKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " | the key={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} in extra is invalid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-string v3, "extra"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_8
    const-string/jumbo v3, "set_attr"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "remove_attr"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "account_id"

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/Account;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account to Json exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Account"

    invoke-static {v1, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    new-instance p1, Lcn/jiguang/analytics/android/e/d/b;

    const/16 v1, 0x44d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcn/jiguang/analytics/android/e/d/b;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthdate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$birthdate"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setCreationTime(Ljava/lang/Long;)V
    .locals 1

    const-string v0, "$creation_time"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$email"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setExtraAttr(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Account"

    const-string p2, "key is empty, do nothing"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->invalidKeys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->extraAttr:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Account;->extraAttr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcn/jiguang/analytics/android/api/Account;->removeAttr:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$name"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setPaid(Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "$paid"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$phone"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setQqId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$qq_id"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setSex(Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "$sex"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setWechatId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$wechat_id"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setWeiboId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$weibo_id"

    invoke-direct {p0, v0, p1}, Lcn/jiguang/analytics/android/api/Account;->setBuiltInAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
