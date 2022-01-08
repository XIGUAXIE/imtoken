.class public Lorg/apache/commons/validator/Validator;
.super Ljava/lang/Object;
.source "Validator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEAN_PARAM:Ljava/lang/String; = "java.lang.Object"

.field public static final FIELD_PARAM:Ljava/lang/String; = "org.apache.commons.validator.Field"

.field public static final FORM_PARAM:Ljava/lang/String; = "org.apache.commons.validator.Form"

.field public static final LOCALE_PARAM:Ljava/lang/String; = "java.util.Locale"

.field public static final VALIDATOR_ACTION_PARAM:Ljava/lang/String; = "org.apache.commons.validator.ValidatorAction"

.field public static final VALIDATOR_PARAM:Ljava/lang/String; = "org.apache.commons.validator.Validator"

.field public static final VALIDATOR_RESULTS_PARAM:Ljava/lang/String; = "org.apache.commons.validator.ValidatorResults"

.field private static final serialVersionUID:J = -0x62cd41a337785bdbL


# instance fields
.field protected transient classLoader:Ljava/lang/ClassLoader;

.field protected fieldName:Ljava/lang/String;

.field protected formName:Ljava/lang/String;

.field protected onlyReturnErrors:Z

.field protected page:I

.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected resources:Lorg/apache/commons/validator/ValidatorResources;

.field protected useContextClassLoader:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/validator/ValidatorResources;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/validator/Validator;-><init>(Lorg/apache/commons/validator/ValidatorResources;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/validator/ValidatorResources;Ljava/lang/String;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lorg/apache/commons/validator/Validator;->page:I

    .line 125
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->classLoader:Ljava/lang/ClassLoader;

    .line 131
    iput-boolean v1, p0, Lorg/apache/commons/validator/Validator;->useContextClassLoader:Z

    .line 136
    iput-boolean v1, p0, Lorg/apache/commons/validator/Validator;->onlyReturnErrors:Z

    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    .line 165
    iput-object p2, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resources cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/validator/ValidatorResources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    .line 100
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lorg/apache/commons/validator/Validator;->page:I

    .line 125
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->classLoader:Ljava/lang/ClassLoader;

    .line 131
    iput-boolean v1, p0, Lorg/apache/commons/validator/Validator;->useContextClassLoader:Z

    .line 136
    iput-boolean v1, p0, Lorg/apache/commons/validator/Validator;->onlyReturnErrors:Z

    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    .line 185
    iput-object p2, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resources cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lorg/apache/commons/validator/Validator;->page:I

    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/apache/commons/validator/Validator;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 322
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/validator/Validator;->useContextClassLoader:Z

    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 329
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFormName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyReturnErrors()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lorg/apache/commons/validator/Validator;->onlyReturnErrors:Z

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 252
    iget v0, p0, Lorg/apache/commons/validator/Validator;->page:I

    return v0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUseContextClassLoader()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lorg/apache/commons/validator/Validator;->useContextClassLoader:Z

    return v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/apache/commons/validator/Validator;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    return-void
.end method

.method public setOnlyReturnErrors(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lorg/apache/commons/validator/Validator;->onlyReturnErrors:Z

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 266
    iput p1, p0, Lorg/apache/commons/validator/Validator;->page:I

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUseContextClassLoader(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lorg/apache/commons/validator/Validator;->useContextClassLoader:Z

    return-void
.end method

.method public validate()Lorg/apache/commons/validator/ValidatorResults;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    const-string v0, "java.util.Locale"

    .line 352
    invoke-virtual {p0, v0}, Lorg/apache/commons/validator/Validator;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    const-string v1, "org.apache.commons.validator.Validator"

    .line 358
    invoke-virtual {p0, v1, p0}, Lorg/apache/commons/validator/Validator;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    iget-object v2, p0, Lorg/apache/commons/validator/Validator;->formName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/validator/ValidatorResources;->getForm(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/commons/validator/Form;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "org.apache.commons.validator.Form"

    .line 362
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/validator/Validator;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lorg/apache/commons/validator/Validator;->parameters:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/validator/Validator;->resources:Lorg/apache/commons/validator/ValidatorResources;

    invoke-virtual {v2}, Lorg/apache/commons/validator/ValidatorResources;->getValidatorActions()Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/validator/Validator;->page:I

    iget-object v4, p0, Lorg/apache/commons/validator/Validator;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/validator/Form;->validate(Ljava/util/Map;Ljava/util/Map;ILjava/lang/String;)Lorg/apache/commons/validator/ValidatorResults;

    move-result-object v0

    return-object v0

    .line 370
    :cond_1
    new-instance v0, Lorg/apache/commons/validator/ValidatorResults;

    invoke-direct {v0}, Lorg/apache/commons/validator/ValidatorResults;-><init>()V

    return-object v0
.end method
