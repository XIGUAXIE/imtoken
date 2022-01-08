.class public Lcn/jiguang/plugins/analytics/JAnalyticsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "JAnalyticsModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JAnalyticsModule"


# instance fields
.field reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 33
    iput-object p1, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    const-string v0, "extra"

    .line 117
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    .line 119
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 120
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/jiguang/analytics/android/api/Event;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/analytics/android/api/Event;

    goto :goto_0

    .line 125
    :cond_0
    iget-object p2, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p2, p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onEvent(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Event;)V

    return-void
.end method


# virtual methods
.method public detachAccount(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 218
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;-><init>(Lcn/jiguang/plugins/analytics/JAnalyticsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->detachAccount(Landroid/content/Context;Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "JAnalyticsModule"

    return-object v0
.end method

.method public identifyAccount(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 15
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "accountID"

    .line 169
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "creationTime"

    .line 170
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-string v5, "name"

    .line 171
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sex"

    .line 172
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "paid"

    .line 173
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "birthday"

    .line 174
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "phone"

    .line 175
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "email"

    .line 176
    invoke-interface {v1, v10}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "weiboID"

    .line 177
    invoke-interface {v1, v11}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wechatID"

    .line 178
    invoke-interface {v1, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "qqID"

    .line 179
    invoke-interface {v1, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "extras"

    .line 180
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 182
    new-instance v14, Lcn/jiguang/analytics/android/api/Account;

    invoke-direct {v14, v2}, Lcn/jiguang/analytics/android/api/Account;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcn/jiguang/analytics/android/api/Account;->setCreationTime(Ljava/lang/Long;)V

    .line 184
    invoke-virtual {v14, v5}, Lcn/jiguang/analytics/android/api/Account;->setName(Ljava/lang/String;)V

    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcn/jiguang/analytics/android/api/Account;->setSex(Ljava/lang/Integer;)V

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcn/jiguang/analytics/android/api/Account;->setPaid(Ljava/lang/Integer;)V

    .line 187
    invoke-virtual {v14, v8}, Lcn/jiguang/analytics/android/api/Account;->setBirthdate(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v14, v9}, Lcn/jiguang/analytics/android/api/Account;->setPhone(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v14, v10}, Lcn/jiguang/analytics/android/api/Account;->setEmail(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v14, v11}, Lcn/jiguang/analytics/android/api/Account;->setWeiboId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v14, v12}, Lcn/jiguang/analytics/android/api/Account;->setWechatId(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v14, v13}, Lcn/jiguang/analytics/android/api/Account;->setQqId(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 195
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v14, v3, v4}, Lcn/jiguang/analytics/android/api/Account;->setExtraAttr(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, v0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v2, Lcn/jiguang/plugins/analytics/JAnalyticsModule$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v2, p0, v3, v4}, Lcn/jiguang/plugins/analytics/JAnalyticsModule$1;-><init>(Lcn/jiguang/plugins/analytics/JAnalyticsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-static {v1, v14, v2}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->identifyAccount(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public init()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initCrashHandler()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 55
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->initCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public onEvent(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 19
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "type"

    .line 65
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "count"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "purchase"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "register"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "browse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "method"

    const-string/jumbo v9, "success"

    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_5

    if-eq v2, v7, :cond_3

    const-string v3, "id"

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    .line 109
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    .line 110
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 111
    new-instance v5, Lcn/jiguang/analytics/android/api/CalculateEvent;

    invoke-direct {v5, v2, v3, v4}, Lcn/jiguang/analytics/android/api/CalculateEvent;-><init>(Ljava/lang/String;D)V

    .line 112
    invoke-direct {v0, v5, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_3

    .line 104
    :cond_1
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Lcn/jiguang/analytics/android/api/CountEvent;

    invoke-direct {v3, v2}, Lcn/jiguang/analytics/android/api/CountEvent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-direct {v0, v3, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_3

    .line 96
    :cond_2
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    .line 97
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "contentType"

    .line 98
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    .line 99
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    .line 100
    new-instance v6, Lcn/jiguang/analytics/android/api/BrowseEvent;

    invoke-direct {v6, v2, v3, v4, v5}, Lcn/jiguang/analytics/android/api/BrowseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 101
    invoke-direct {v0, v6, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    :cond_3
    const-string v2, "goodsId"

    .line 80
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "goodsType"

    .line 81
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "goodsName"

    .line 82
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "price"

    .line 83
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 84
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v2, "currency"

    .line 85
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 88
    sget-object v3, Lcn/jiguang/analytics/android/api/Currency;->CNY:Lcn/jiguang/analytics/android/api/Currency;

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/api/Currency;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    new-instance v2, Lcn/jiguang/analytics/android/api/PurchaseEvent;

    sget-object v16, Lcn/jiguang/analytics/android/api/Currency;->CNY:Lcn/jiguang/analytics/android/api/Currency;

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcn/jiguang/analytics/android/api/PurchaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DZLcn/jiguang/analytics/android/api/Currency;Ljava/lang/String;I)V

    goto :goto_2

    .line 91
    :cond_4
    new-instance v2, Lcn/jiguang/analytics/android/api/PurchaseEvent;

    sget-object v16, Lcn/jiguang/analytics/android/api/Currency;->USD:Lcn/jiguang/analytics/android/api/Currency;

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcn/jiguang/analytics/android/api/PurchaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DZLcn/jiguang/analytics/android/api/Currency;Ljava/lang/String;I)V

    .line 93
    :goto_2
    invoke-direct {v0, v2, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    .line 74
    :cond_5
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 76
    new-instance v4, Lcn/jiguang/analytics/android/api/LoginEvent;

    invoke-direct {v4, v2, v3}, Lcn/jiguang/analytics/android/api/LoginEvent;-><init>(Ljava/lang/String;Z)V

    .line 77
    invoke-direct {v0, v4, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    .line 68
    :cond_6
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 70
    new-instance v4, Lcn/jiguang/analytics/android/api/RegisterEvent;

    invoke-direct {v4, v2, v3}, Lcn/jiguang/analytics/android/api/RegisterEvent;-><init>(Ljava/lang/String;Z)V

    .line 71
    invoke-direct {v0, v4, v1}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->sendEvent(Lcn/jiguang/analytics/android/api/Event;Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x524a5976 -> :sswitch_4
        -0x2923d15d -> :sswitch_3
        0x5a7510f -> :sswitch_2
        0x625ef69 -> :sswitch_1
        0x67e90501 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPageEnd(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "pageName"

    .line 147
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStart(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "pageName"

    .line 135
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAnalyticsReportPeriod(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "period"

    .line 160
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 161
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->setAnalyticsReportPeriod(Landroid/content/Context;I)V

    return-void
.end method

.method public setChannel(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "channel"

    .line 154
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "enable"

    .line 48
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->setDebugMode(Z)V

    :cond_0
    return-void
.end method

.method public stopCrashHandler()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule;->reactAppContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->stopCrashHandler(Landroid/content/Context;)V

    return-void
.end method
