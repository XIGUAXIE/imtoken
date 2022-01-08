.class public Lorg/apache/commons/validator/FormSet;
.super Ljava/lang/Object;
.source "FormSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final COUNTRY_FORMSET:I = 0x3

.field protected static final GLOBAL_FORMSET:I = 0x1

.field protected static final LANGUAGE_FORMSET:I = 0x2

.field protected static final VARIANT_FORMSET:I = 0x4

.field private static final serialVersionUID:J = -0x7c04df70016f4047L


# instance fields
.field private final constants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;

.field private final forms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Form;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private transient log:Lorg/apache/commons/logging/Log;

.field private merged:Z

.field private processed:Z

.field private variant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lorg/apache/commons/validator/FormSet;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/validator/FormSet;->processed:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->constants:Ljava/util/Map;

    return-void
.end method

.method private getLog()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->log:Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_0

    .line 374
    const-class v0, Lorg/apache/commons/validator/FormSet;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/FormSet;->log:Lorg/apache/commons/logging/Log;

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public addConstant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->constants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSet;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constant \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists in FormSet["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->displayKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] - ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->constants:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addForm(Lorg/apache/commons/validator/Form;)V
    .locals 3

    .line 259
    invoke-virtual {p1}, Lorg/apache/commons/validator/Form;->getName()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSet;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already exists in FormSet["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->displayKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] - ignoring."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/validator/Form;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public displayKey()Ljava/lang/String;
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "language="

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "country="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "variant="

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "default"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getForm(Ljava/lang/String;)Lorg/apache/commons/validator/Form;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Form;

    return-object p1
.end method

.method public getForms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Form;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getVariant()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "When variant is specified, country and language must be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "When country is specified, language must be specified."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    return-object v0
.end method

.method protected isMerged()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/apache/commons/validator/FormSet;->merged:Z

    return v0
.end method

.method public isProcessed()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/apache/commons/validator/FormSet;->processed:Z

    return v0
.end method

.method protected merge(Lorg/apache/commons/validator/FormSet;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getForms()Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lorg/apache/commons/validator/FormSet;->getForms()Ljava/util/Map;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/Form;

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Form;

    invoke-virtual {v2, v1}, Lorg/apache/commons/validator/Form;->merge(Lorg/apache/commons/validator/Form;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Form;

    invoke-virtual {p0, v1}, Lorg/apache/commons/validator/FormSet;->addForm(Lorg/apache/commons/validator/Form;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lorg/apache/commons/validator/FormSet;->merged:Z

    return-void
.end method

.method declared-synchronized process(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Form;

    .line 298
    iget-object v2, p0, Lorg/apache/commons/validator/FormSet;->constants:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/validator/FormSet;->forms:Ljava/util/Map;

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/commons/validator/Form;->process(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lorg/apache/commons/validator/FormSet;->processed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    return-void
.end method

.method public setVariant(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormSet: language="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  country="

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  variant="

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lorg/apache/commons/validator/FormSet;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/validator/FormSet;->getForms()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "   "

    .line 354
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
