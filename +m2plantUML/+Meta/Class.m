classdef Class < m2plantUML.Meta.Super.Meta
    
    %% PROPERTIES: PUBLIC
    properties
        
    end % properties
    
    %% PROPERTIES: SETACCESS = PROTECTED
    properties (SetAccess = protected)
        
        % The list of properties
        PropertyList;
        
        % It cotains a Nx2 cell array. The first column holds the
        % category (categoryUML property) and the second column the
        % actual cell array of handles to the meta classes.
        % N = number of unique categories.
        SortedPropertyList = cell(0, 2);
        
        % The list of methods
        MethodList;
        
        % It cotains a Nx2 cell array. The first column holds the
        % category (categoryUML property) and the second column the
        % actual cell array of handles to the meta classes.
        % N = number of unique categories.
        SortedMethodList = cell(0, 2);
        
        % The list of events
        EventList;
        
        % The list of EnumerationMembers
        EnumerationMemberList;
        
        % The list of super classes
        SuperclassList;
        
        % The inheritation relation ships
        InheritationRelations = cell(0, 1);
        
    end % properties (SetAccess = protected)
    
    %% PROPERTIES: DEPENDENT, SETACCESS = PROTECTED
    properties (Dependent, SetAccess = protected)
        
        % A complete list of properties incl the ones inheritated from
        % other classes
        PropertyListFlattend;
        
        % A complete list of methods incl the ones inheritated from
        % other classes
        MethodListFlattend;
        
        % A complete list of super classes incl. nested inheritated classes
        SuperclassListFlattend;
        
        % The name of Class
        Name;
        
        % Class description
        Description;
        
        % Detailed class description
        DetailedDescription;
        
        % Is the class hidden?
        Hidden;
        
        % Is the class sealed?
        Sealed;
        
        % Is the class abstract?
        Abstract;
        
        % Construct OnLoad
        ConstructOnLoad;
        
        % Is the class a handle class?
        HandleCompatible;
        
        % InferiorClasses
        InferiorClasses;
        
        % ContainingPackage
        ContainingPackage;
        
    end % properties (Dependent, SetAccess = protected)
    
    %% PROPERTIES: ACCESS = PROTECTED
    properties (Access = protected)
        
    end % properties (Access = protected)
    
    %% PROPERTIES: CONSTANT
    properties (Constant)
        
    end % properties (Constant)
    
    %% METHODS: PUBLIC
    methods
        
        %% - Constructor
        function this = Class(metaObj, parent)
            % function this = Class()
            %
            %
            
            this = this@m2plantUML.Meta.Super.Meta(metaObj, parent);
            
        end % function this = ColumnDataDisplay()
        
        %% - val = get.PropertyListFlattend()
        function val = get.PropertyListFlattend(this)
            % function val = get.PropertyListFlattend(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.PropertyList;
            
        end % function val = get.PropertyListFlattend(this)
        
        %% - val = get.MethodListFlattend()
        function val = get.MethodListFlattend(this)
            % function val = get.MethodListFlattend(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.MethodList;
            
        end % function val = get.MethodListFlattend(this)
        
        %% - val = get.SuperclassListFlattend()
        function val = get.SuperclassListFlattend(this)
            % function val = get.SuperclassListFlattend(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = getSuperclassListFlattend(this);
            
        end % function val = get.SuperclassListFlattend(this)
        
        %% - val = get.Name()
        function val = get.Name(this)
            % function val = get.Name(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.Name;
            
        end % function val = get.Name(this)
        
        %% - val = get.Description()
        function val = get.Description(this)
            % function val = get.Description(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.Description;
            
        end % function val = get.Description(this)
        
        %% - val = get.DetailedDescription()
        function val = get.DetailedDescription(this)
            % function val = get.DetailedDescription(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.DetailedDescription;
            
        end % function val = get.DetailedDescription(this)
        
        %% - val = get.Hidden()
        function val = get.Hidden(this)
            % function val = get.Hidden(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.Hidden;
            
        end % function val = get.Hidden(this)
        
        %% - val = get.Sealed()
        function val = get.Sealed(this)
            % function val = get.Sealed(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.Sealed;
            
        end % function val = get.Sealed(this)
        
        %% - val = get.Abstract()
        function val = get.Abstract(this)
            % function val = get.Abstract(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.Abstract;
            
        end % function val = get.Abstract(this)
        
        %% - val = get.ConstructOnLoad()
        function val = get.ConstructOnLoad(this)
            % function val = get.ConstructOnLoad(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.ConstructOnLoad;
            
        end % function val = get.ConstructOnLoad(this)
        
        %% - val = get.HandleCompatible()
        function val = get.HandleCompatible(this)
            % function val = get.HandleCompatible(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.HandleCompatible;
            
        end % function val = get.HandleCompatible(this)
        
        %% - val = get.InferiorClasses()
        function val = get.InferiorClasses(this)
            % function val = get.InferiorClasses(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.metaObj.InferiorClasses;
            
        end % function val = get.InferiorClasses(this)
        
        %% - val = get.ContainingPackage()
        function val = get.ContainingPackage(this)
            % function val = get.ContainingPackage(this)
            %
            % The getter method will return the private member of the property
            % set.
            
            val = this.Parent;
            
        end % function val = get.ContainingPackage(this)
        
    end % methods
    
    %% METHODS: PROTECTED
    methods (Access = protected)
        
        %% - walkMeta()
        function walkMeta(this)
            % function walkMeta(this)
            %
            % This method will make sure the sub meta classes of the
            % metaObj are also wrapped by the meta classes of this package.
            
            % PropertyList %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.metaObj.PropertyList)
                this.PropertyList = m2plantUML.Meta.Property(this.metaObj.PropertyList(1), this);
                for iPack = 2:length(this.metaObj.PropertyList)
                    this.PropertyList(iPack) = m2plantUML.Meta.Property(this.metaObj.PropertyList(iPack), this);
                end % for iPack = 2:length(this.metaObj.PropertyList)
            end % if ~isempty(this.metaObj.PropertyList)
            
            % The list of propertties sorted and categorized
            getSortedPropertyList(this);
            
            % MethodList %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.metaObj.MethodList)
                this.MethodList = m2plantUML.Meta.Method(this.metaObj.MethodList(1), this);
                for iPack = 2:length(this.metaObj.MethodList)
                    this.MethodList(iPack) = m2plantUML.Meta.Method(this.metaObj.MethodList(iPack), this);
                end % for iPack = 2:length(this.metaObj.MethodList)
            end % if ~isempty(this.metaObj.MethodList)
            
            % The list of propertties sorted and categorized
            getSortedMethodList(this);
            
            % EventList %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.metaObj.EventList)
                this.EventList = m2plantUML.Meta.Event(this.metaObj.EventList(1), this);
                for iPack = 2:length(this.metaObj.EventList)
                    this.EventList(iPack) = m2plantUML.Meta.Event(this.metaObj.EventList(iPack), this);
                end % for iPack = 2:length(this.metaObj.EventList)
            end % if ~isempty(this.metaObj.EventList)
            
            % EnumerationMemberList %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.metaObj.EnumerationMemberList)
                this.EnumerationMemberList = m2plantUML.Meta.EnumeratedValue(this.metaObj.EnumerationMemberList(1), this);
                for iPack = 2:length(this.metaObj.EnumerationMemberList)
                    this.EnumerationMemberList(iPack) = m2plantUML.Meta.EnumeratedValue(this.metaObj.EnumerationMemberList(iPack), this);
                end % for iPack = 2:length(this.metaObj.EnumerationMemberList)
            end % if ~isempty(this.metaObj.EnumerationMemberList)
            
            % SuperclassList %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.metaObj.SuperclassList)
                this.SuperclassList = m2plantUML.Meta.Class(this.metaObj.SuperclassList(1), this);
                for iPack = 2:length(this.metaObj.SuperclassList)
                    this.SuperclassList(iPack) = m2plantUML.Meta.Class(this.metaObj.SuperclassList(iPack), this);
                end % for iPack = 2:length(this.metaObj.EventList)
            end % if ~isempty(this.metaObj.EventList)
            
            discoverInheritanceRelation(this);
            
        end % function walkMeta(this)
        
        %% - getSortedPropertyList()
        function getSortedPropertyList(this)
            % function getSortedPropertyList(this)
            %
            % Call to fill the SortedPropertyList property.
            %
            % It cotains a Nx2 cell array. The first column holds the
            % category (categoryUML property) and the second column the
            % actual cell array of handles to the meta classes.
            
            % reset the list
            this.SortedPropertyList = cell(0, 2);
            
            thePropList = this.PropertyListFlattend;
            for iProp = 1:length(thePropList)
                % get the currently processes property
                curProp = thePropList(iProp);
                curPropCat = curProp.categoryUML;
                
                % get the index of the catergory in the list
                catIdx = strcmp(this.SortedPropertyList(:, 1), curPropCat);
                
                % new category?
                if ~any(catIdx)
                    this.SortedPropertyList{end + 1, 1} = curPropCat;
                    this.SortedPropertyList{end, 2} = curProp;
                else % if ~any(catIdx)
                    this.SortedPropertyList{catIdx, 2}(end + 1, 1) = curProp;
                end % if ~any(catIdx)
                
            end % for iProp = 1:length(this.PropertyList)
            
            % sort the categories by name
            [~, sortIdx] = sort(this.SortedPropertyList(:, 1));
            this.SortedPropertyList = this.SortedPropertyList(sortIdx, :);
            
            % sort the properties
            for iCat = 1:size(this.SortedPropertyList, 1)
                % make sure to sort case insensitive
                [~, sortIdx] = sort(lower({this.SortedPropertyList{iCat, 2}(:).Name}));
                % apply the sorting
                this.SortedPropertyList{iCat, 2} = this.SortedPropertyList{iCat, 2}(sortIdx);
            end % for iCat = 1:size(this.SortedPropertyList, 1)
            
        end % function getSortedPropertyList(this)
        
        %% - getSortedMethodList()
        function getSortedMethodList(this)
            % function getSortedMethodList(this)
            %
            % Call to fill the SortedMethodList property.
            %
            % It cotains a Nx2 cell array. The first column holds the
            % category (categoryUML property) and the second column the
            % actual cell array of handles to the meta classes.
            
            % reset the list
            this.SortedMethodList = cell(0, 2);
            
            theMethodList = this.MethodListFlattend;
            for iMethod = 1:length(theMethodList)
                % get the currently processes property
                curMethod = theMethodList(iMethod);
                curMethodCat = curMethod.categoryUML;
                
                % get the index of the catergory in the list
                catIdx = strcmp(this.SortedMethodList(:, 1), curMethodCat);
                
                % new category?
                if ~any(catIdx)
                    this.SortedMethodList{end + 1, 1} = curMethodCat;
                    this.SortedMethodList{end, 2} = curMethod;
                else % if ~any(catIdx)
                    this.SortedMethodList{catIdx, 2}(end + 1, 1) = curMethod;
                end % if ~any(catIdx)
                
            end % for iProp = 1:length(this.MethodList)
            
            % sort the categories by name
            [~, sortIdx] = sort(this.SortedMethodList(:, 1));
            this.SortedMethodList = this.SortedMethodList(sortIdx, :);
            
            % sort the properties
            for iCat = 1:size(this.SortedMethodList, 1)
                % make sure to sort case insensitive
                [~, sortIdx] = sort(lower({this.SortedMethodList{iCat, 2}(:).Name}));
                % apply the sorting
                this.SortedMethodList{iCat, 2} = this.SortedMethodList{iCat, 2}(sortIdx);
            end % for iCat = 1:size(this.SortedMethodList, 1)
            
        end % function getSortedMethodList(this)
        
        %% - val = getSuperclassListFlattend(this)
        function val = getSuperclassListFlattend(this)
            % function val = getSuperclassListFlattend(this)
            %
            % return as a list of all superclasses including the ones which
            % are inheritated
            
            val = this.SuperclassList;
            for iSup = 1:length(val)
                val = horzcat(...
                    val,...
                    this.SuperclassList(iSup).SuperclassListFlattend...
                    );
            end % for iSup = 1:length(val)
            
            % keep only distinct items
            if length(val) > 1
                val = unique(val);
            end
            
        end % function val = getSuperclassListFlattend(this)
        
        %% - discoverInheritanceRelation()
        function discoverInheritanceRelation(this)
            % function discoverInheritanceRelation(this)
            %
            % This call will fill the InheritationRelations property with
            % the actual uml pseudo code for the class relations to its
            % super classes
            
            this.InheritationRelations = cell(0, 1);
            for iSup = 1:length(this.SuperclassList)
                this.InheritationRelations{end + 1, 1} = sprintf('%s --|> %s',...
                    this.Name, this.SuperclassList(iSup).Name);
            end % for iSup = 1:length(this.SuperclassList)
            
        end % function discoverInheritanceRelation(this)
        
        %% - umlStr = getPlantUML()
        function umlStr = getPlantUML(this)
            % function umlStr = getPlantUML(this)
            %
            % Returns the plantUML representation of this meta object.
            % Note: This method will be called by the getter of the
            % plantUML property of the m2plantUML.Meta.Super.Meta.
            
            % uml string start %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            if ~isempty(this.EnumerationMemberList)
                classPrefix = 'enum';
            elseif this.Abstract
                classPrefix = 'abstract class';
            else
                classPrefix = 'class';
            end % if this.Abstract
            umlStr = sprintf('%s %s {', classPrefix, this.Name);
            
            % add UML String of each field %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            umlStr = sprintf('%s\n%s', umlStr, getPlantUmlProperties(this));
            
            % add UML String for each method %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            umlStr = sprintf('%s\n%s', umlStr, getPlantUmlMethods(this));
            
            % add UML String for each event %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            umlStr = sprintf('%s\n%s', umlStr, getPlantUmlEvents(this));
            
            % add UML String for each enumeration value %%%%%%%%%%%%%%%%%%%
            umlStr = sprintf('%s\n%s', umlStr, getPlantUmlEnumerationValues(this));
            
            % close the class section the UML end %%%%%%%%%%%%%%%%%%%%%%%%%
            umlStr = sprintf('%s\n}', umlStr);
            
            % add UML String for each superclass inheritance %%%%%%%%%%%%%%
            umlStr = sprintf('%s\n%s', umlStr, getPlantUmlInheritanceRelation(this));
            
        end % function umlStr = getPlantUML(this)
        
        %% - umlStr = getPlantUmlProperties()
        function umlStr = getPlantUmlProperties(this)
            % function umlStr = getPlantUmlProperties(this)
            %
            % Returns the uml string for the properties of this class
            
            % if there are no members of the list, return an empty string
            if isempty(this.PropertyList)
                umlStr = '';
                return;
            end % if isempty(this.PropertyList)
            
            umlStr = '   -- PROPERTIES --';
            
            for iCat = 1:size(this.SortedPropertyList, 1)
                % add the headline of the current category
                umlStr = sprintf('%s\n   .. %s ..', umlStr, this.SortedPropertyList{iCat, 1});
                
                % loop over the properties
                theProps = this.SortedPropertyList{iCat, 2};
                for iProp = 1:length(theProps)
                    curMetaObj = theProps(iProp);
                    umlStr = sprintf('%s\n%s', umlStr, curMetaObj.plantUML);
                end % for iObj = 1:length(this.PropertyList)
            end % for iCat = 1:size(this.SortedPropertyList, 1)
            
        end % function umlStr = getPlantUmlProperties(this)
        
        %% - umlStr = getPlantUmlMethods()
        function umlStr = getPlantUmlMethods(this)
            % function umlStr = getPlantUmlMethods(this)
            %
            % Returns the uml string for the methods of this class
            
            % if there are no members of the list, return an empty string
            if isempty(this.MethodList)
                umlStr = '';
                return;
            end % if isempty(this.MethodList)
            
            umlStr = '   -- Methods --';
            
            for iCat = 1:size(this.SortedMethodList, 1)
                % add the headline of the current category
                umlStr = sprintf('%s\n   .. %s ..', umlStr, this.SortedMethodList{iCat, 1});
                
                % loop over the properties
                theProps = this.SortedMethodList{iCat, 2};
                for iProp = 1:length(theProps)
                    curMetaObj = theProps(iProp);
                    umlStr = sprintf('%s\n%s', umlStr, curMetaObj.plantUML);
                end % for iObj = 1:length(this.MethodList)
            end % for iCat = 1:size(this.SortedMethodList, 1)
            
        end % function umlStr = getPlantUmlMethods(this)
        
        %% - umlStr = getPlantUmlEvents()
        function umlStr = getPlantUmlEvents(this)
            % function umlStr = getPlantUmlEvents(this)
            %
            % Returns the uml string for the events of this class
            
            % if there are no members of the list, return an empty string
            if isempty(this.EventList)
                umlStr = '';
                return;
            end % if isempty(this.EventList)
            
            umlStr = '   -- Events --';
        
            for iObj = 1:length(this.EventList)
                curMetaObj = this.EventList(iObj);
                umlStr = sprintf('%s\n%s', umlStr, curMetaObj.plantUML);
            end % for iObj = 1:length(this.EventList)
            
        end % function umlStr = getPlantUmlEvents(this)
        
        %% - umlStr = getPlantUmlEnumerationValues()
        function umlStr = getPlantUmlEnumerationValues(this)
            % function umlStr = getPlantUmlEnumerationValues(this)
            %
            % Returns the uml string for the enumeration values of this class
            
            % if there are no members of the list, return an empty string
            if isempty(this.EnumerationMemberList)
                umlStr = '';
                return;
            end % if isempty(this.EnumerationMemberList)
            
            umlStr = '   -- Enumeration Values --';
            
            for iObj = 1:length(this.EnumerationMemberList)
                curMetaObj = this.EnumerationMemberList(iObj);
                umlStr = sprintf('%s\n%s', umlStr, curMetaObj.plantUML);
            end % for iObj = 1:length(this.EnumerationMemberList)
            
        end % function umlStr = getPlantUmlEnumerationValues(this)
        
        %% - umlStr = getPlantUmlInheritanceRelation()
        function umlStr = getPlantUmlInheritanceRelation(this)
            % function umlStr = getPlantUmlInheritanceRelation(this)
            %
            % Returns the uml string defining the class inheritances
            
            umlStr = '';
            
            for idx = 1:length(this.InheritationRelations)
                umlStr = sprintf('%s\n%s',...
                    umlStr,...
                    this.InheritationRelations{idx}...
                    );
            end % for idx = 1:length(this.InheritationRelations)
            
        end % function umlStr = getPlantUmlInheritanceRelation(this)
        
    end %  methods (Access = protected)
    
    %% METHODS: STATIC
    methods (Static)
        
    end % methods (Static)
    
end % classdef Class < handle
