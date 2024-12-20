.class public final synthetic Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    sget v1, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->$r8$clinit:I

    .line 1
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-boolean v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->UXDUMP:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 5
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 7
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ENCODING:Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface {v1, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_ROTATION:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v12, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    const-string v7, "0"

    invoke-interface {v1, v12, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->EXTRA_NODE_RESOURCE:Ljava/lang/String;

    invoke-interface {v1, v12, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    const-string v13, ""

    invoke-interface {v1, v12, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-interface {v1, v12, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v12, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    const-string v14, "false"

    invoke-interface {v1, v12, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    new-instance v6, Lcom/motorola/camera/utility/UxBounds;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    invoke-direct {v6, v2, v2, v8, v7}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 19
    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v12, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    iput v3, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    .line 21
    iput v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 22
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 23
    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.CameraPreview"

    .line 24
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 25
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 26
    invoke-virtual {v0, v6, v1, v3, v7}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 27
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 29
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    const-string v7, "mTextureManager.allComponents"

    .line 30
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_1d

    const-string v11, "item.value"

    const-string v10, "item.key"

    const/4 v8, 0x2

    if-eq v7, v8, :cond_17

    const/16 v9, 0x12

    if-eq v7, v9, :cond_16

    const/16 v9, 0x15

    if-eq v7, v9, :cond_8

    const/16 v8, 0x21

    if-eq v7, v8, :cond_1d

    const/16 v8, 0x19

    if-eq v7, v8, :cond_7

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_1

    goto/16 :goto_9

    .line 33
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 34
    iget v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 35
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 36
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_9

    .line 37
    :cond_2
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 38
    invoke-virtual {v0, v7, v1, v6, v9}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 39
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 41
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iget-boolean v8, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v8, :cond_4

    const-string v8, "mode_slider_menu_button"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v7, v12

    :cond_4
    :goto_1
    const-string v6, "modeSlider.childs"

    .line 42
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v3

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 44
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v7

    .line 45
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 46
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Landroid/graphics/RectF;

    iget v4, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v4, v7, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 47
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 48
    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 49
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v18, v17, 0x1

    move-object v6, v0

    move-object/from16 v19, v9

    move-object v9, v1

    move-object v2, v10

    move/from16 v10, v17

    move-object v3, v11

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 50
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v17, v18

    goto :goto_3

    :cond_5
    move-object/from16 v19, v9

    move-object v2, v10

    move-object v3, v11

    :goto_3
    move-object v10, v2

    move-object v11, v3

    move-object/from16 v9, v19

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_2

    .line 51
    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_9

    :cond_7
    move-object v2, v10

    move-object v3, v11

    move-object/from16 v18, v5

    goto/16 :goto_a

    :cond_8
    move-object v2, v10

    move-object v3, v11

    .line 52
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 53
    iget v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 54
    const-class v6, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ZoomComponent"

    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    .line 55
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v9, :cond_9

    .line 56
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    iget v11, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    add-int/lit8 v8, v11, 0x1

    iput v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v12, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    const-string v9, "Zoom_slider"

    invoke-interface {v1, v12, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v12, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v12, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v12, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v12, v8, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v9, 0x4

    .line 64
    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 65
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v8

    .line 66
    new-instance v9, Lcom/motorola/camera/utility/UxBounds;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 67
    iget v12, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v15

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v10

    sub-float/2addr v12, v15

    .line 68
    iget v15, v8, Landroid/graphics/PointF;->x:F

    move-object/from16 v18, v5

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v10

    add-float/2addr v5, v15

    .line 69
    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v10

    add-float/2addr v15, v8

    .line 70
    invoke-direct {v9, v11, v12, v5, v15}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 71
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v1, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_9
    move-object/from16 v18, v5

    move-object v9, v12

    move-object/from16 v17, v15

    .line 73
    :goto_4
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v5

    const-string v8, "Zoom_button"

    if-eqz v5, :cond_12

    .line 74
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v9, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v9, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v9, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-interface {v1, v9, v5, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 82
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v9

    .line 83
    new-instance v11, Lcom/motorola/camera/utility/UxBounds;

    iget v12, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v15, v10

    sub-float/2addr v12, v15

    .line 84
    iget v15, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v19, v14

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float/2addr v14, v10

    sub-float/2addr v15, v14

    .line 85
    iget v14, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v20, v6

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v10

    add-float/2addr v6, v14

    .line 86
    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float/2addr v14, v10

    add-float/2addr v14, v9

    .line 87
    invoke-direct {v11, v12, v15, v6, v14}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 88
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v1, v11, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 91
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v11, :cond_a

    iget-boolean v12, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "zoom_toggle_tele"

    .line 92
    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_a
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v11, :cond_b

    iget-boolean v12, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_b

    const-string/jumbo v12, "zoom_toggle_wide"

    .line 94
    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_b
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v11, :cond_c

    iget-boolean v12, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_c

    const-string/jumbo v12, "zoom_toggle_uwide"

    .line 96
    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_c
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v11, :cond_d

    iget-boolean v12, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v12, :cond_d

    const-string/jumbo v12, "zoom_toggle_macro"

    .line 98
    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_d
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v6, :cond_f

    iget-boolean v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_f

    const-string/jumbo v11, "zoom_toggle_close_up"

    .line 100
    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    :cond_f
    :goto_5
    const-string/jumbo v6, "zoomComponent.childs"

    .line 101
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :cond_10
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 103
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 104
    iget v14, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v15, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 105
    iget v10, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v14, v10

    .line 106
    iget v10, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v15, v10

    .line 107
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v21, v5

    .line 108
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    move-object/from16 v22, v6

    const/4 v6, 0x0

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v6, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v6, v5, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 116
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    iget v9, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v6, v9, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 118
    invoke-virtual {v6, v5, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v5, 0x2

    new-array v9, v5, [F

    const/4 v10, 0x0

    aput v14, v9, v10

    const/4 v14, 0x1

    aput v15, v9, v14

    new-array v15, v5, [F

    .line 119
    invoke-virtual {v6, v15, v9}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 120
    new-instance v6, Landroid/graphics/PointF;

    aget v9, v15, v10

    aget v10, v15, v14

    invoke-direct {v6, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 121
    new-instance v9, Lcom/motorola/camera/utility/UxBounds;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v10, v14

    .line 122
    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v15

    sub-float/2addr v14, v5

    .line 123
    iget v5, v6, Landroid/graphics/PointF;->x:F

    move/from16 v23, v12

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v15

    add-float/2addr v12, v5

    .line 124
    iget v5, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v15

    add-float/2addr v6, v5

    .line 125
    invoke-direct {v9, v10, v14, v12, v6}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 126
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v1, v10, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v9, v23

    const/high16 v10, 0x40000000    # 2.0f

    goto/16 :goto_6

    :cond_11
    const/4 v10, 0x0

    .line 128
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    :cond_12
    move-object/from16 v20, v6

    move-object/from16 v19, v14

    .line 129
    :goto_7
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v2, :cond_13

    .line 130
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_14

    .line 131
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_INDEX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_RESOURCE_ID:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CLASS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_CONTENT_DESC:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_SELECTED:Ljava/lang/String;

    move-object/from16 v4, v19

    invoke-interface {v1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 139
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v2

    .line 140
    new-instance v3, Lcom/motorola/camera/utility/UxBounds;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 141
    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    .line 142
    iget v9, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    .line 143
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    .line 144
    invoke-direct {v3, v5, v6, v10, v7}, Lcom/motorola/camera/utility/UxBounds;-><init>(FFFF)V

    .line 145
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->ATTRIBUTE_BOUNDS:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/UxBounds;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v7, v5

    goto/16 :goto_e

    :cond_14
    move-object/from16 v4, v19

    goto/16 :goto_d

    :cond_15
    :goto_9
    move-object/from16 v18, v5

    move-object v4, v14

    move-object/from16 v17, v15

    move-object v14, v4

    move-object/from16 v15, v17

    move-object/from16 v5, v18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v18, v5

    move-object v4, v14

    move-object/from16 v17, v15

    move-object v7, v12

    goto/16 :goto_e

    :cond_17
    move-object/from16 v18, v5

    move-object v2, v10

    move-object v3, v11

    :goto_a
    move-object v4, v14

    move-object/from16 v17, v15

    .line 147
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 148
    iget v5, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    .line 149
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 150
    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeMenuComponent"

    .line 151
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 152
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 153
    invoke-virtual {v0, v6, v1, v5, v12}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 154
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 157
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    .line 158
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const-string v8, "mode_%d"

    .line 159
    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_18
    const/4 v9, 0x0

    :cond_19
    const-string v5, "modeMenus.childs"

    .line 161
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :cond_1a
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 163
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v7

    .line 164
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 165
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 166
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 167
    invoke-virtual {v11, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 168
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v14, v10, 0x1

    move-object v6, v0

    move-object v9, v1

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 169
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v10, v14

    goto :goto_c

    :cond_1b
    const/4 v7, 0x0

    .line 170
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v7, 0x0

    goto :goto_e

    :cond_1d
    move-object/from16 v18, v5

    move-object v7, v12

    move-object v4, v14

    move-object/from16 v17, v15

    :goto_e
    move-object v14, v4

    move-object v12, v7

    move-object/from16 v15, v17

    move-object/from16 v5, v18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v18, v5

    move-object v7, v12

    .line 171
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_NODE:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->TAG_HIERARCHY:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 174
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    .line 175
    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    return-void

    .line 176
    :pswitch_1
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;

    .line 177
    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->indicatorScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_f

    .line 178
    :cond_1f
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 179
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideScaleProperty:Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 180
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_f
    return-void

    .line 181
    :pswitch_2
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    .line 182
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    .line 184
    :pswitch_3
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->show()V

    return-void

    :pswitch_4
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$Companion;

    .line 185
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    .line 188
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->indeterminateProcessingStarted(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void

    .line 189
    :pswitch_5
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 190
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->show()V

    .line 192
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-nez v0, :cond_20

    goto :goto_10

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_10
    return-void

    .line 193
    :pswitch_6
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 194
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 198
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFadeDuration()J

    move-result-wide v2

    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 200
    :pswitch_7
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/SecureMediaIdsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void

    .line 202
    :pswitch_8
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/QueryInterceptorDatabase;

    .line 203
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 205
    invoke-interface {v0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery()V

    return-void

    .line 206
    :goto_11
    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
