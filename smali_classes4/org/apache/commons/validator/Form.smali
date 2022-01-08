.class public Lorg/apache/commons/validator/Form;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5971fdf9731c1b93L


# instance fields
.field protected hFields:Lorg/apache/commons/collections/FastHashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected inherit:Ljava/lang/String;

.field protected lFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/validator/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field private processed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/commons/validator/Form;->name:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    .line 60
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Form;->hFields:Lorg/apache/commons/collections/FastHashMap;

    .line 68
    iput-object v0, p0, Lorg/apache/commons/validator/Form;->inherit:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/validator/Form;->processed:Z

    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/commons/validator/Field;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsField(Ljava/lang/String;)Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExtends()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->inherit:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lorg/apache/commons/validator/Field;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Field;

    return-object p1
.end method

.method protected getFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Field;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->hFields:Lorg/apache/commons/collections/FastHashMap;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/validator/Field;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isExtending()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/validator/Form;->inherit:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProcessed()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lorg/apache/commons/validator/Form;->processed:Z

    return v0
.end method

.method protected merge(Lorg/apache/commons/validator/Form;)V
    .locals 5

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    .line 150
    invoke-virtual {p1}, Lorg/apache/commons/validator/Form;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 151
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/Field;

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v2}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p0, v3}, Lorg/apache/commons/validator/Form;->containsField(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/validator/Form;->getField(Ljava/lang/String;)Lorg/apache/commons/validator/Field;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v4, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected process(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Form;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->isProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->isExtending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lorg/apache/commons/validator/Form;->inherit:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Form;

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v1}, Lorg/apache/commons/validator/Form;->isProcessed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {v1, p2, p1, p3}, Lorg/apache/commons/validator/Form;->process(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 193
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/validator/Form;->getFields()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Field;

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    iget-object p3, p0, Lorg/apache/commons/validator/Form;->hFields:Lorg/apache/commons/collections/FastHashMap;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 206
    iget-object p3, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/validator/Field;

    .line 208
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/validator/Field;->process(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 211
    :cond_4
    iput-boolean v1, p0, Lorg/apache/commons/validator/Form;->processed:Z

    return-void
.end method

.method public setExtends(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/apache/commons/validator/Form;->inherit:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/apache/commons/validator/Form;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form: "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Lorg/apache/commons/validator/Form;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v2, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\tField: \n"

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate(Ljava/util/Map;Ljava/util/Map;I)Lorg/apache/commons/validator/ValidatorResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorAction;",
            ">;I)",
            "Lorg/apache/commons/validator/ValidatorResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/Form;->validate(Ljava/util/Map;Ljava/util/Map;ILjava/lang/String;)Lorg/apache/commons/validator/ValidatorResults;

    move-result-object p1

    return-object p1
.end method

.method validate(Ljava/util/Map;Ljava/util/Map;ILjava/lang/String;)Lorg/apache/commons/validator/ValidatorResults;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorAction;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/validator/ValidatorResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/apache/commons/validator/ValidatorResults;

    invoke-direct {v0}, Lorg/apache/commons/validator/ValidatorResults;-><init>()V

    const-string v1, "org.apache.commons.validator.ValidatorResults"

    .line 271
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.apache.commons.validator.Field"

    if-eqz p4, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getFieldMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/Field;

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v2}, Lorg/apache/commons/validator/Field;->getPage()I

    move-result p4

    if-gt p4, p3, :cond_3

    .line 283
    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/validator/Field;->validate(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/commons/validator/ValidatorResults;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/ValidatorResults;->merge(Lorg/apache/commons/validator/ValidatorResults;)V

    goto :goto_1

    .line 278
    :cond_0
    new-instance p1, Lorg/apache/commons/validator/ValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown field "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in form "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/validator/Form;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_1
    iget-object p4, p0, Lorg/apache/commons/validator/Form;->lFields:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 287
    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/Field;

    .line 290
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v2}, Lorg/apache/commons/validator/Field;->getPage()I

    move-result v3

    if-gt v3, p3, :cond_2

    .line 293
    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/validator/Field;->validate(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/commons/validator/ValidatorResults;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/validator/ValidatorResults;->merge(Lorg/apache/commons/validator/ValidatorResults;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
